`timescale 1ns/1ps

`include "def.svh"

module proc_tb (
);

    reg clk;
    reg rst;

    // switch input
    reg sw_wr_o;
    wire [`BYTE_BUS] sw_pkt_hdr_i [0:`HDR_MAX_LEN - 1];

    // switch output
    wire sw_rd_o;
    wire [`BYTE_BUS] sw_pkt_hdr_o [0:`HDR_MAX_LEN - 1];

    // proc 0
    wire proc0_in_empty_i;
    wire proc0_in_rd_o;
    wire [`BYTE_BUS] proc0_pkt_hdr_i [0:`HDR_MAX_LEN - 1];
    wire proc0_out_empty_i;
    wire proc0_out_wr_o;
    wire [`BYTE_BUS] proc0_pkt_hdr_o [0:`HDR_MAX_LEN - 1];

    // proc mod
    reg proc_mod_start_i;
    reg [`ADDR_BUS] proc_mod_hit_action_addr_i;
    reg [`ADDR_BUS] proc_mod_miss_action_addr_i;

    // parser mod
    reg ps_mod_start_i;
    reg [`DATA_BUS] ps_mod_hdr_id_i;
    reg [`DATA_BUS] ps_mod_hdr_len_i;
    reg [`DATA_BUS] ps_mod_next_tag_start_i;
    reg [`DATA_BUS] ps_mod_next_tag_len_i;
    reg [`DATA_BUS] ps_mod_next_table_i [`NEXT_TABLE_SIZE - 1:0];

    // matcher mod
    reg mt_mod_start_i;
    reg [3:0] mt_mod_match_hdr_id_i;
    reg [5:0] mt_mod_match_key_off_i;
    reg [5:0] mt_mod_match_key_len_i;
    reg [5:0] mt_mod_match_val_len_i;
    reg [`DATA_BUS] mt_logic_entry_len_i;
    reg [`DATA_BUS] mt_logic_start_addr_i;

    reg [`DATA_BUS] mt1_logic_start_addr_i;

    // executor mod
    reg ex_mod_start_i;
    reg [`QUAD_BUS] ex_mod_ops_i [0:`MAX_OP_NUM - 1];

    // proc 1
    wire proc1_in_empty_i;
    wire proc1_in_rd_o;
    wire [`BYTE_BUS] proc1_pkt_hdr_i [0:`HDR_MAX_LEN - 1];
    wire proc1_out_empty_i;
    wire proc1_out_wr_o;
    wire [`BYTE_BUS] proc1_pkt_hdr_o [0:`HDR_MAX_LEN - 1];

    // axi crossbar

    // axi master interfaces
    wire [0 : 0] m_axi_awid [1:0];
    wire [31 : 0] m_axi_awaddr [1:0];
    wire [7 : 0] m_axi_awlen [1:0];
    wire [2 : 0] m_axi_awsize [1:0];
    wire [1 : 0] m_axi_awburst [1:0];
    wire [0 : 0] m_axi_awlock [1:0];
    wire [3 : 0] m_axi_awcache [1:0];
    wire [2 : 0] m_axi_awprot [1:0];
    wire [3 : 0] m_axi_awqos [1:0];
    wire [0 : 0] m_axi_awvalid [1:0];
    wire [0 : 0] m_axi_awready [1:0];
    wire [31 : 0] m_axi_wdata [1:0];
    wire [3 : 0] m_axi_wstrb [1:0];
    wire [0 : 0] m_axi_wlast [1:0];
    wire [0 : 0] m_axi_wvalid [1:0];
    wire [0 : 0] m_axi_wready [1:0];
    wire [0 : 0] m_axi_bid [1:0];
    wire [1 : 0] m_axi_bresp [1:0];
    wire [0 : 0] m_axi_bvalid [1:0];
    wire [0 : 0] m_axi_bready [1:0];
    wire [0 : 0] m_axi_arid [1:0];
    wire [31 : 0] m_axi_araddr [1:0];
    wire [7 : 0] m_axi_arlen [1:0];
    wire [2 : 0] m_axi_arsize [1:0];
    wire [1 : 0] m_axi_arburst [1:0];
    wire [0 : 0] m_axi_arlock [1:0];
    wire [3 : 0] m_axi_arcache [1:0];
    wire [2 : 0] m_axi_arprot [1:0];
    wire [3 : 0] m_axi_arqos [1:0];
    wire [0 : 0] m_axi_arvalid [1:0];
    wire [0 : 0] m_axi_arready [1:0];
    wire [0 : 0] m_axi_rid [1:0];
    wire [31 : 0] m_axi_rdata [1:0];
    wire [1 : 0] m_axi_rresp [1:0];
    wire [0 : 0] m_axi_rlast [1:0];
    wire [0 : 0] m_axi_rvalid [1:0];
    wire [0 : 0] m_axi_rready [1:0];

    // axi slave interfaces
    wire [0 : 0] s_axi_awid [1:0];
    wire [31 : 0] s_axi_awaddr [1:0];
    wire [7 : 0] s_axi_awlen [1:0];
    wire [2 : 0] s_axi_awsize [1:0];
    wire [1 : 0] s_axi_awburst [1:0];
    wire s_axi_awlock [1:0];
    wire [3 : 0] s_axi_awcache [1:0];
    wire [2 : 0] s_axi_awprot [1:0];
    wire [3 : 0] s_axi_awregion [1:0];
    wire s_axi_awvalid [1:0];
    wire s_axi_awready [1:0];
    wire [31 : 0] s_axi_wdata [1:0];
    wire [3 : 0] s_axi_wstrb [1:0];
    wire s_axi_wlast [1:0];
    wire s_axi_wvalid [1:0];
    wire s_axi_wready [1:0];
    wire [0 : 0] s_axi_bid [1:0];
    wire [1 : 0] s_axi_bresp [1:0];
    wire s_axi_bvalid [1:0];
    wire s_axi_bready [1:0];
    wire [0 : 0] s_axi_arid [1:0];
    wire [31 : 0] s_axi_araddr [1:0];
    wire [7 : 0] s_axi_arlen [1:0];
    wire [2 : 0] s_axi_arsize [1:0];
    wire [1 : 0] s_axi_arburst [1:0];
    wire s_axi_arlock [1:0];
    wire [3 : 0] s_axi_arcache [1:0];
    wire [2 : 0] s_axi_arprot [1:0];
    wire [3 : 0] s_axi_arregion [1:0];
    wire s_axi_arvalid [1:0];
    wire s_axi_arready [1:0];
    wire [0 : 0] s_axi_rid [1:0];
    wire [31 : 0] s_axi_rdata [1:0];
    wire [1 : 0] s_axi_rresp [1:0];
    wire s_axi_rlast [1:0];
    wire s_axi_rvalid [1:0];
    wire s_axi_rready [1:0];

    axi_crossbar_0 axi_crossbar_mem(
        .aclk(clk),
        .aresetn(~rst),
        // connected to master devices
        .s_axi_awid({m_axi_awid[1], m_axi_awid[0]}),
        .s_axi_awaddr({m_axi_awaddr[1], m_axi_awaddr[0]}),
        .s_axi_awlen({m_axi_awlen[1], m_axi_awlen[0]}),
        .s_axi_awsize({m_axi_awsize[1], m_axi_awsize[0]}),
        .s_axi_awburst({m_axi_awburst[1], m_axi_awburst[0]}),
        .s_axi_awlock({m_axi_awlock[1], m_axi_awlock[0]}),
        .s_axi_awcache({m_axi_awcache[1], m_axi_awcache[0]}),
        .s_axi_awprot({m_axi_awprot[1], m_axi_awprot[0]}),
        .s_axi_awqos({m_axi_awqos[1], m_axi_awqos[0]}),
        .s_axi_awvalid({m_axi_awvalid[1], m_axi_awvalid[0]}),
        .s_axi_awready({m_axi_awready[1], m_axi_awready[0]}),
        .s_axi_wdata({m_axi_wdata[1], m_axi_wdata[0]}),
        .s_axi_wstrb({m_axi_wstrb[1], m_axi_wstrb[0]}),
        .s_axi_wlast({m_axi_wlast[1], m_axi_wlast[0]}),
        .s_axi_wvalid({m_axi_wvalid[1], m_axi_wvalid[0]}),
        .s_axi_wready({m_axi_wready[1], m_axi_wready[0]}),
        .s_axi_bid({m_axi_bid[1], m_axi_bid[0]}),
        .s_axi_bresp({m_axi_bresp[1], m_axi_bresp[0]}),
        .s_axi_bvalid({m_axi_bvalid[1], m_axi_bvalid[0]}),
        .s_axi_bready({m_axi_bready[1], m_axi_bready[0]}),
        .s_axi_arid({m_axi_arid[1], m_axi_arid[0]}),
        .s_axi_araddr({m_axi_araddr[1], m_axi_araddr[0]}),
        .s_axi_arlen({m_axi_arlen[1], m_axi_arlen[0]}),
        .s_axi_arsize({m_axi_arsize[1], m_axi_arsize[0]}),
        .s_axi_arburst({m_axi_arburst[1], m_axi_arburst[0]}),
        .s_axi_arlock({m_axi_arlock[1], m_axi_arlock[0]}),
        .s_axi_arcache({m_axi_arcache[1], m_axi_arcache[0]}),
        .s_axi_arprot({m_axi_arprot[1], m_axi_arprot[0]}),
        .s_axi_arqos({m_axi_arqos[1], m_axi_arqos[0]}),
        .s_axi_arvalid({m_axi_arvalid[1], m_axi_arvalid[0]}),
        .s_axi_arready({m_axi_arready[1], m_axi_arready[0]}),
        .s_axi_rid({m_axi_rid[1], m_axi_rid[0]}),
        .s_axi_rdata({m_axi_rdata[1], m_axi_rdata[0]}),
        .s_axi_rresp({m_axi_rresp[1], m_axi_rresp[0]}),
        .s_axi_rlast({m_axi_rlast[1], m_axi_rlast[0]}),
        .s_axi_rvalid({m_axi_rvalid[1], m_axi_rvalid[0]}),
        .s_axi_rready({m_axi_rready[1], m_axi_rready[0]}),
        // connected to slave devices
        .m_axi_awid({s_axi_awid[1], s_axi_awid[0]}),
        .m_axi_awaddr({s_axi_awaddr[1], s_axi_awaddr[0]}),
        .m_axi_awlen({s_axi_awlen[1], s_axi_awlen[0]}),
        .m_axi_awsize({s_axi_awsize[1], s_axi_awsize[0]}),
        .m_axi_awburst({s_axi_awburst[1], s_axi_awburst[0]}),
        .m_axi_awlock({s_axi_awlock[1], s_axi_awlock[0]}),
        .m_axi_awcache({s_axi_awcache[1], s_axi_awcache[0]}),
        .m_axi_awprot({s_axi_awprot[1], s_axi_awprot[0]}),
        .m_axi_awregion({s_axi_awregion[1], s_axi_awregion[0]}),
        // .m_axi_awqos({s_axi_awqos[1], s_axi_awqos[0]}),
        .m_axi_awvalid({s_axi_awvalid[1], s_axi_awvalid[0]}),
        .m_axi_awready({s_axi_awready[1], s_axi_awready[0]}),
        .m_axi_wdata({s_axi_wdata[1], s_axi_wdata[0]}),
        .m_axi_wstrb({s_axi_wstrb[1], s_axi_wstrb[0]}),
        .m_axi_wlast({s_axi_wlast[1], s_axi_wlast[0]}),
        .m_axi_wvalid({s_axi_wvalid[1], s_axi_wvalid[0]}),
        .m_axi_wready({s_axi_wready[1], s_axi_wready[0]}),
        .m_axi_bid({s_axi_bid[1], s_axi_bid[0]}),
        .m_axi_bresp({s_axi_bresp[1], s_axi_bresp[0]}),
        .m_axi_bvalid({s_axi_bvalid[1], s_axi_bvalid[0]}),
        .m_axi_bready({s_axi_bready[1], s_axi_bready[0]}),
        .m_axi_arid({s_axi_arid[1], s_axi_arid[0]}),
        .m_axi_araddr({s_axi_araddr[1], s_axi_araddr[0]}),
        .m_axi_arlen({s_axi_arlen[1], s_axi_arlen[0]}),
        .m_axi_arsize({s_axi_arsize[1], s_axi_arsize[0]}),
        .m_axi_arburst({s_axi_arburst[1], s_axi_arburst[0]}),
        .m_axi_arlock({s_axi_arlock[1], s_axi_arlock[0]}),
        .m_axi_arcache({s_axi_arcache[1], s_axi_arcache[0]}),
        .m_axi_arprot({s_axi_arprot[1], s_axi_arprot[0]}),
        .m_axi_arregion({s_axi_arregion[1], s_axi_arregion[0]}),
        // .m_axi_arqos({s_axi_arqos[1], s_axi_arqos[0]}),
        .m_axi_arvalid({s_axi_arvalid[1], s_axi_arvalid[0]}),
        .m_axi_arready({s_axi_arready[1], s_axi_arready[0]}),
        .m_axi_rid({s_axi_rid[1], s_axi_rid[0]}),
        .m_axi_rdata({s_axi_rdata[1], s_axi_rdata[0]}),
        .m_axi_rresp({s_axi_rresp[1], s_axi_rresp[0]}),
        .m_axi_rlast({s_axi_rlast[1], s_axi_rlast[0]}),
        .m_axi_rvalid({s_axi_rvalid[1], s_axi_rvalid[0]}),
        .m_axi_rready({s_axi_rready[1], s_axi_rready[0]})
    );

    // block ram 0
    blk_mem_gen_0 bram0(
        // rsta_busy,
        // rstb_busy,
        .s_aclk(clk),
        .s_aresetn(~rst),
        .s_axi_awid(s_axi_awid[0]),
        .s_axi_awaddr(s_axi_awaddr[0]),
        .s_axi_awlen(s_axi_awlen[0]),
        .s_axi_awsize(s_axi_awsize[0]),
        .s_axi_awburst(s_axi_awburst[0]),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .s_axi_awready(s_axi_awready[0]),
        .s_axi_wdata(s_axi_wdata[0]),
        .s_axi_wstrb(s_axi_wstrb[0]),
        .s_axi_wlast(s_axi_wlast[0]),
        .s_axi_wvalid(s_axi_wvalid[0]),
        .s_axi_wready(s_axi_wready[0]),
        .s_axi_bid(s_axi_bid[0]),
        .s_axi_bresp(s_axi_bresp[0]),
        .s_axi_bvalid(s_axi_bvalid[0]),
        .s_axi_bready(s_axi_bready[0]),
        .s_axi_arid(s_axi_arid[0]),
        .s_axi_araddr(s_axi_araddr[0]),
        .s_axi_arlen(s_axi_arlen[0]),
        .s_axi_arsize(s_axi_arsize[0]),
        .s_axi_arburst(s_axi_arburst[0]),
        .s_axi_arvalid(s_axi_arvalid[0]),
        .s_axi_arready(s_axi_arready[0]),
        .s_axi_rid(s_axi_rid[0]),
        .s_axi_rdata(s_axi_rdata[0]),
        .s_axi_rresp(s_axi_rresp[0]),
        .s_axi_rlast(s_axi_rlast[0]),
        .s_axi_rvalid(s_axi_rvalid[0]),
        .s_axi_rready(s_axi_rready[0])
    );

    // block ram 1
    blk_mem_gen_0 bram1(
        // rsta_busy,
        // rstb_busy,
        .s_aclk(clk),
        .s_aresetn(~rst),
        .s_axi_awid(s_axi_awid[1]),
        .s_axi_awaddr(s_axi_awaddr[1]),
        .s_axi_awlen(s_axi_awlen[1]),
        .s_axi_awsize(s_axi_awsize[1]),
        .s_axi_awburst(s_axi_awburst[1]),
        .s_axi_awvalid(s_axi_awvalid[1]),
        .s_axi_awready(s_axi_awready[1]),
        .s_axi_wdata(s_axi_wdata[1]),
        .s_axi_wstrb(s_axi_wstrb[1]),
        .s_axi_wlast(s_axi_wlast[1]),
        .s_axi_wvalid(s_axi_wvalid[1]),
        .s_axi_wready(s_axi_wready[1]),
        .s_axi_bid(s_axi_bid[1]),
        .s_axi_bresp(s_axi_bresp[1]),
        .s_axi_bvalid(s_axi_bvalid[1]),
        .s_axi_bready(s_axi_bready[1]),
        .s_axi_arid(s_axi_arid[1]),
        .s_axi_araddr(s_axi_araddr[1]),
        .s_axi_arlen(s_axi_arlen[1]),
        .s_axi_arsize(s_axi_arsize[1]),
        .s_axi_arburst(s_axi_arburst[1]),
        .s_axi_arvalid(s_axi_arvalid[1]),
        .s_axi_arready(s_axi_arready[1]),
        .s_axi_rid(s_axi_rid[1]),
        .s_axi_rdata(s_axi_rdata[1]),
        .s_axi_rresp(s_axi_rresp[1]),
        .s_axi_rlast(s_axi_rlast[1]),
        .s_axi_rvalid(s_axi_rvalid[1]),
        .s_axi_rready(s_axi_rready[1])
    );

    // processor
    proc_axi #(.PROC_ID(0)) proc_axi0(
        .clk(clk),
        .rst(rst),
        // input
        .in_empty_i(proc0_in_empty_i),
        .in_rd_o(proc0_in_rd_o),
        .pkt_hdr_i(proc0_pkt_hdr_i),
        // output
        .out_empty_i(proc0_out_empty_i),
        .out_wr_o(proc0_out_wr_o),
        .pkt_hdr_o(proc0_pkt_hdr_o),
        // proc
        .proc_mod_start_i(proc_mod_start_i),
        .proc_mod_hit_action_addr_i(proc_mod_hit_action_addr_i),
        .proc_mod_miss_action_addr_i(proc_mod_miss_action_addr_i),
        // parser
        .ps_mod_start_i(ps_mod_start_i),
        .ps_mod_hdr_id_i(ps_mod_hdr_id_i),
        .ps_mod_hdr_len_i(ps_mod_hdr_len_i),
        .ps_mod_next_tag_start_i(ps_mod_next_tag_start_i),
        .ps_mod_next_tag_len_i(ps_mod_next_tag_len_i),
        .ps_mod_next_table_i(ps_mod_next_table_i),
        // matcher
        .mt_mod_start_i(mt_mod_start_i),
        .mt_mod_match_hdr_id_i(mt_mod_match_hdr_id_i),
        .mt_mod_match_key_off_i(mt_mod_match_key_off_i),
        .mt_mod_match_key_len_i(mt_mod_match_key_len_i),
        .mt_mod_match_val_len_i(mt_mod_match_val_len_i),
        .mt_logic_entry_len_i(mt_logic_entry_len_i),
        .mt_logic_start_addr_i(mt_logic_start_addr_i),
        // executor
        .ex_mod_start_i(ex_mod_start_i),
        .ex_mod_ops_i(ex_mod_ops_i),
        // axi
        .axi_awid(m_axi_awid[0]),
        .axi_awaddr(m_axi_awaddr[0]),
        .axi_awlen(m_axi_awlen[0]),
        .axi_awsize(m_axi_awsize[0]),
        .axi_awburst(m_axi_awburst[0]),
        .axi_awlock(m_axi_awlock[0]),
        .axi_awcache(m_axi_awcache[0]),
        .axi_awprot(m_axi_awprot[0]),
        .axi_awqos(m_axi_awqos[0]),
        .axi_awvalid(m_axi_awvalid[0]),
        .axi_awready(m_axi_awready[0]),
        .axi_wdata(m_axi_wdata[0]),
        .axi_wstrb(m_axi_wstrb[0]),
        .axi_wlast(m_axi_wlast[0]),
        .axi_wvalid(m_axi_wvalid[0]),
        .axi_wready(m_axi_wready[0]),
        .axi_bid(m_axi_bid[0]),
        .axi_bresp(m_axi_bresp[0]),
        .axi_bvalid(m_axi_bvalid[0]),
        .axi_bready(m_axi_bready[0]),
        .axi_arid(m_axi_arid[0]),
        .axi_araddr(m_axi_araddr[0]),
        .axi_arlen(m_axi_arlen[0]),
        .axi_arsize(m_axi_arsize[0]),
        .axi_arburst(m_axi_arburst[0]),
        .axi_arlock(m_axi_arlock[0]),
        .axi_arcache(m_axi_arcache[0]),
        .axi_arprot(m_axi_arprot[0]),
        .axi_arqos(m_axi_arqos[0]),
        .axi_arvalid(m_axi_arvalid[0]),
        .axi_arready(m_axi_arready[0]),
        .axi_rid(m_axi_rid[0]),
        .axi_rdata(m_axi_rdata[0]),
        .axi_rresp(m_axi_rresp[0]),
        .axi_rlast(m_axi_rlast[0]),
        .axi_rvalid(m_axi_rvalid[0]),
        .axi_rready(m_axi_rready[0])
    );

    proc_axi #(.PROC_ID(1)) proc_axi1(
        .clk(clk),
        .rst(rst),
        // input
        .in_empty_i(proc1_in_empty_i),
        .in_rd_o(proc1_in_rd_o),
        .pkt_hdr_i(proc1_pkt_hdr_i),
        // output
        .out_empty_i(proc1_out_empty_i),
        .out_wr_o(proc1_out_wr_o),
        .pkt_hdr_o(proc1_pkt_hdr_o),
        // proc
        .proc_mod_start_i(proc_mod_start_i),
        .proc_mod_hit_action_addr_i(proc_mod_hit_action_addr_i),
        .proc_mod_miss_action_addr_i(proc_mod_miss_action_addr_i),
        // parser
        .ps_mod_start_i(ps_mod_start_i),
        .ps_mod_hdr_id_i(ps_mod_hdr_id_i),
        .ps_mod_hdr_len_i(ps_mod_hdr_len_i),
        .ps_mod_next_tag_start_i(ps_mod_next_tag_start_i),
        .ps_mod_next_tag_len_i(ps_mod_next_tag_len_i),
        .ps_mod_next_table_i(ps_mod_next_table_i),
        // matcher
        .mt_mod_start_i(mt_mod_start_i),
        .mt_mod_match_hdr_id_i(mt_mod_match_hdr_id_i),
        .mt_mod_match_key_off_i(mt_mod_match_key_off_i),
        .mt_mod_match_key_len_i(mt_mod_match_key_len_i),
        .mt_mod_match_val_len_i(mt_mod_match_val_len_i),
        .mt_logic_entry_len_i(mt_logic_entry_len_i),
        .mt_logic_start_addr_i(mt1_logic_start_addr_i),
        // executor
        .ex_mod_start_i(ex_mod_start_i),
        .ex_mod_ops_i(ex_mod_ops_i),
        // axi
        .axi_awid(m_axi_awid[1]),
        .axi_awaddr(m_axi_awaddr[1]),
        .axi_awlen(m_axi_awlen[1]),
        .axi_awsize(m_axi_awsize[1]),
        .axi_awburst(m_axi_awburst[1]),
        .axi_awlock(m_axi_awlock[1]),
        .axi_awcache(m_axi_awcache[1]),
        .axi_awprot(m_axi_awprot[1]),
        .axi_awqos(m_axi_awqos[1]),
        .axi_awvalid(m_axi_awvalid[1]),
        .axi_awready(m_axi_awready[1]),
        .axi_wdata(m_axi_wdata[1]),
        .axi_wstrb(m_axi_wstrb[1]),
        .axi_wlast(m_axi_wlast[1]),
        .axi_wvalid(m_axi_wvalid[1]),
        .axi_wready(m_axi_wready[1]),
        .axi_bid(m_axi_bid[1]),
        .axi_bresp(m_axi_bresp[1]),
        .axi_bvalid(m_axi_bvalid[1]),
        .axi_bready(m_axi_bready[1]),
        .axi_arid(m_axi_arid[1]),
        .axi_araddr(m_axi_araddr[1]),
        .axi_arlen(m_axi_arlen[1]),
        .axi_arsize(m_axi_arsize[1]),
        .axi_arburst(m_axi_arburst[1]),
        .axi_arlock(m_axi_arlock[1]),
        .axi_arcache(m_axi_arcache[1]),
        .axi_arprot(m_axi_arprot[1]),
        .axi_arqos(m_axi_arqos[1]),
        .axi_arvalid(m_axi_arvalid[1]),
        .axi_arready(m_axi_arready[1]),
        .axi_rid(m_axi_rid[1]),
        .axi_rdata(m_axi_rdata[1]),
        .axi_rresp(m_axi_rresp[1]),
        .axi_rlast(m_axi_rlast[1]),
        .axi_rvalid(m_axi_rvalid[1]),
        .axi_rready(m_axi_rready[1])
    );

    // latch: input <-> proc 0
    wire latch0_empty_i;
    proc_latch proc_latch0 (
        .clk(clk),
        .rst(rst),
        // switch in
        .wr_i(sw_wr_o),
        .pkt_hdr_i(sw_pkt_hdr_i),
        // proc 0 in
        .rd_i(proc0_in_rd_o),
        .pkt_hdr_o(proc0_pkt_hdr_i),
        .empty_o(latch0_empty_i)
    );
    assign proc0_in_empty_i = latch0_empty_i;

    // latch: proc 0 <-> proc 1
    wire latch1_empty_i;
    proc_latch proc_latch1 (
        .clk(clk),
        .rst(rst),
        // proc 0 out
        .wr_i(proc0_out_wr_o),
        .pkt_hdr_i(proc0_pkt_hdr_o),
        // proc 1 in
        .rd_i(proc1_in_rd_o),
        .pkt_hdr_o(proc1_pkt_hdr_i),
        .empty_o(latch1_empty_i)
    );
    assign proc1_in_empty_i = latch1_empty_i;
    assign proc0_out_empty_i = latch1_empty_i;

    // latch: proc1 <-> output
    wire latch2_empty_i;
    proc_latch proc_latch2 (
        .clk(clk),
        .rst(rst),
        // proc 1 out
        .wr_i(proc1_out_wr_o),
        .pkt_hdr_i(proc1_pkt_hdr_o),
        // switch out
        .rd_i(sw_rd_o),
        .pkt_hdr_o(sw_pkt_hdr_o),
        .empty_o(latch2_empty_i)
    );
    assign proc1_out_empty_i = latch2_empty_i;

    // BEGIN TEST
    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end
    end

    initial begin
        rst = `TRUE;
        #45 rst = `FALSE;
    end

    // switch input
    assign sw_pkt_hdr_i = {
        8'hc8, 8'h58, 8'hc0, 8'hb5, 8'hfe, 8'h1e, 8'h90, 8'h03, 8'h25, 8'hb9, 8'h7f, 8'h06, 8'h08, 8'h00, 8'h45, 8'h00,
        8'h00, 8'h28, 8'h4c, 8'hd6, 8'h00, 8'h00, 8'heb, 8'h06, 8'hd5, 8'hfb, 8'h59, 8'hf8, 8'ha5, 8'h2c, 8'hb7, 8'hac,
        8'hf6, 8'h2c, 8'hc5, 8'h7f, 8'h4e, 8'h3c, 8'hba, 8'h38, 8'hf4, 8'hc6, 8'h00, 8'h00, 8'h00, 8'h00, 8'h50, 8'h02,
        8'h04, 8'h00, 8'h3c, 8'h29, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
        // padding
        8'h00, 8'h00, 8'h00, 8'h00
    };
    initial begin
        sw_wr_o = `FALSE;
        #65 sw_wr_o = `TRUE;
        #20 sw_wr_o = `FALSE;
    end
    // switch output
    assign sw_rd_o = `FALSE;

    // proc mod
    initial begin
        proc_mod_start_i <= `FALSE;
        proc_mod_hit_action_addr_i <= 0;
        proc_mod_miss_action_addr_i <= 0;
        #65
        proc_mod_start_i <= `TRUE;
        proc_mod_hit_action_addr_i <= 1;
        proc_mod_miss_action_addr_i <= 0;
        #20
        proc_mod_start_i <= `FALSE;
    end
    // parser mod
    initial begin
        ps_mod_start_i <= `FALSE;
        ps_mod_hdr_id_i <= 0;
        ps_mod_hdr_len_i <= 0;
        ps_mod_next_tag_start_i <= 0;
        ps_mod_next_tag_len_i <= 0;
        ps_mod_next_table_i <= {`NO_NEXT_HEADER, `NO_NEXT_HEADER};
        #65
        // ethernet header
        ps_mod_start_i <= `TRUE;
        ps_mod_hdr_id_i <= 0;
        ps_mod_hdr_len_i <= 14;
        ps_mod_next_tag_start_i <= 12;
        ps_mod_next_tag_len_i <= 2;
        ps_mod_next_table_i <= {
            {16'h0800, 16'h0001},
            `NO_NEXT_HEADER
        };
        #20
        // ip header
        ps_mod_start_i <= `TRUE;
        ps_mod_hdr_id_i <= 1;
        ps_mod_hdr_len_i <= 20;
        ps_mod_next_tag_start_i <= 9;
        ps_mod_next_tag_len_i <= 1;
        ps_mod_next_table_i <= {
            `NO_NEXT_HEADER,
            `NO_NEXT_HEADER
        };
        #20
        ps_mod_start_i <= `FALSE;
    end
    // matcher mod
    initial begin
        mt_mod_start_i <= `FALSE;
        mt_mod_match_hdr_id_i <= 0;
        mt_mod_match_key_off_i <= 0;
        mt_mod_match_key_len_i <= 0;
        mt_mod_match_val_len_i <= 0;
        mt_logic_entry_len_i <= 0;
        mt_logic_start_addr_i <= 0;

        mt1_logic_start_addr_i <= 0;
        #65
        mt_mod_start_i <= `TRUE;
        mt_mod_match_hdr_id_i <= 1;
        mt_mod_match_key_off_i <= 16;
        mt_mod_match_key_len_i <= 4;
        mt_mod_match_val_len_i <= 6 + 2;
        mt_logic_entry_len_i <= 16;
        mt_logic_start_addr_i <= 0;

        mt1_logic_start_addr_i <= 32'h00100000;
        #20
        mt_mod_start_i <= `FALSE;
    end
    // executor mod
    initial begin
        ex_mod_start_i <= `FALSE;
        for (int i = 0; i < `MAX_OP_NUM; i++) begin
            ex_mod_ops_i[i] = `ZERO_QUAD;
        end
        #65
        ex_mod_start_i <= `TRUE;
        ex_mod_ops_i[0:5] <= {
            `ZERO_QUAD,
            'h0c000000_01860006,    // copy dst mac to src mac
            'h0c000000_0006f006,    // copy next hop mac to dst mac
            'h0bffffff_12010000,    // ttl - 1
            'h04000000_10141282,    // ip cksum
            `ZERO_QUAD              // nop
        };
        #20
        ex_mod_start_i <= `FALSE;
    end

    // expected output pkt header
    wire [`BYTE_BUS] ans_pkt_hdr [0:`HDR_MAX_LEN - 1];
    // assign ans_pkt_hdr = {
    //     8'hde, 8'had, 8'hbe, 8'hef, 8'hfa, 8'hce, 8'hc8, 8'h58, 8'hc0, 8'hb5, 8'hfe, 8'h1e, 8'h08, 8'h00, 8'h45, 8'h00,
    //     8'h00, 8'h28, 8'h4c, 8'hd6, 8'h00, 8'h00, 8'hea, 8'h06, 8'hd6, 8'hfb, 8'h59, 8'hf8, 8'ha5, 8'h2c, 8'hb7, 8'hac,
    //     8'hf6, 8'h2c, 8'hc5, 8'h7f, 8'h4e, 8'h3c, 8'hba, 8'h38, 8'hf4, 8'hc6, 8'h00, 8'h00, 8'h00, 8'h00, 8'h50, 8'h02,
    //     8'h04, 8'h00, 8'h3c, 8'h29, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
    //     // padding
    //     8'h00, 8'h00, 8'h00, 8'h00
    // };
    assign ans_pkt_hdr = {
        8'hab, 8'hcd, 8'hef, 8'h01, 8'h23, 8'h45,
        8'hde, 8'had, 8'hbe, 8'hef, 8'hfa, 8'hce,
        8'h08, 8'h00,
        8'h45, 8'h00, 8'h00, 8'h28, 8'h4c, 8'hd6, 8'h00, 8'h00, 8'he9, 8'h06, 8'hd7, 8'hfb, 8'h59, 8'hf8, 8'ha5, 8'h2c, 8'hb7, 8'hac,
        8'hf6, 8'h2c, 8'hc5, 8'h7f, 8'h4e, 8'h3c, 8'hba, 8'h38, 8'hf4, 8'hc6, 8'h00, 8'h00, 8'h00, 8'h00, 8'h50, 8'h02,
        8'h04, 8'h00, 8'h3c, 8'h29, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
        // padding
        8'h00, 8'h00, 8'h00, 8'h00
    };

    // check answer
    initial begin
        $display("===== BEGIN TEST =====");
        wait(proc1_out_empty_i == `FALSE);
        if (sw_pkt_hdr_o == ans_pkt_hdr) begin
            $display("PASSED!");
        end else begin
            $display("FAILED!");
        end
        $display("===== END TEST =====");
    end

endmodule