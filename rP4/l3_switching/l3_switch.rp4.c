
action ipv4_handle(){
	goto ipv4_handle_s;
}
action ipv6_handle() {
	goto ipv6_handle_s;
}
action drop() {
	mark_to_drop();
}
action ipv4_lpm_handle() {
	iv.ip_version = 4;
  goto ipv4_lpm_s;
}

action ipv4_handle_2() {
	iv.ip_version = 4;
	goto nexthop_s;
}

struct ingress_variable {
	bit<14> nexthop_id = 0;
	bit<8> ttl_dec = 0;
	bit<8> ip_version;
}

action set_nexthop(bit<14> nexthop) {
  iv.nexthop_id = nexthop;
  goto nexthop_s;
}

action send(bit<9> port) {
	iv.ucast_egress_port = port;
}

action l3_switch_ipv4(bit<9> port, bit<48> new_mac_da, bit<48> new_mac_sa) {
	hs.ethernet.dstAddr = new_mac_da;
	hs.ethernet.srcAddr = new_mac_sa;
	hs.ipv4.ttl = hs.ipv4.ttl - 1;
	send(port);
}

action l3_switch_ipv6(bit<9> port, bit<48> new_mac_da, bit<48> new_mac_sa) {
	hs.ethernet.dstAddr = new_mac_da;
	hs.ethernet.srcAddr = new_mac_sa;
	hs.ipv6.hop_limit = hs.ipv6.hop_limit - 1;
	send(port);
}

stage ipv4_6_s{
    parser:
        hs.ipv4 = packet_seg.extract(ipv4_t);
        hs.ipv6 = packet_seg.extract(ipv6_t);
    matcher:
        action, para = (hdr.ipv4.isValid()) << 3
													+ (meta.ipv4_csum_err==0 && hs.ipv4.ttl>1) << 2
                          + (hs.ipv6.isValid()) << 1
													+ (hs.ipv6.hop_limit>1);
    executer:
        switch action:
            case 4b1100: ipv4_handle();
						case 4b1000: ipv4_handle_2();
            case 4b0011: ipv6_handle();
						case 4b0010: ipv6_handle_2();
            default: drop();
}

stage ipv4_handle_s {
    parser:
        hs.ipv4 = packet_seg.extract(ipv4_t);
    matcher:
        action, para = ipv4_host.exact(hs.ipv4.dstAddr);
    executer:
        switch action:
            case 0: send(para.port);
            case 1: drop();
            case 2: l3_switch(para.port, para.new_mac_da, para.new_mac_sa);
            default: ipv4_lpm_handle();
}

stage ipv4_lpm_s {
    parser:
        hs.ipv4 = packet_seg.extract(ipv4_t);
    matcher:
        action, para = ipv4_lpm.lpm(hs.ipv4.dstAddr);
    executer:
        switch action:
            case 0: set_nexthop(para.nexthop);
            default: set_nexthop(64);
}

stage ipv6_handle_s {
	...
}

stage ipv6_lpm_s {
	...
}

stage nexthop_s {
    parser:
    matcher:
        action, para = nexthop.exact(iv.nexthop_id) << 1 + (iv.ip_version == 4);
    executer:
        switch action:
            case 3b001: l3_switch_ipv4(para.port, para.new_mac_da, para.new_mac_sa);
						case 3b000: l3_switch_ipv6(para.port, para.new_mac_da, para.new_mac_sa);
            case 3b010: send(para.port);
						case 3b011: send(para.port);
            default: drop();
}
