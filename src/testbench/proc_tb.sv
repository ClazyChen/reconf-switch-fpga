`timescale 1ns/1ps

`include "def.svh"

module proc_tb (
);

    reg clk;
    reg rst;

    wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1];
    assign pkt_hdr_i = {
        8'hc8, 8'h58, 8'hc0, 8'hb5, 8'hfe, 8'h1e, 8'h90, 8'h03, 8'h25, 8'hb9, 8'h7f, 8'h06, 8'h08, 8'h00, 8'h45, 8'h00,
        8'h00, 8'h28, 8'h4c, 8'hd6, 8'h00, 8'h00, 8'heb, 8'h06, 8'hd5, 8'hfb, 8'h59, 8'hf8, 8'ha5, 8'h2c, 8'hb7, 8'hac,
        8'hf6, 8'h2c, 8'hc5, 8'h7f, 8'h4e, 8'h3c, 8'hba, 8'h38, 8'hf4, 8'hc6, 8'h00, 8'h00, 8'h00, 8'h00, 8'h50, 8'h02,
        8'h04, 8'h00, 8'h3c, 8'h29, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
        // padding
        8'h00, 8'h00, 8'h00, 8'h00
    };

    // proc
    reg start_i;
    wire proc0_ready_o;
    wire [`BYTE_BUS] proc0_pkt_hdr_o [0:`HDR_MAX_LEN - 1];

    wire proc1_ready_o;
    wire [`BYTE_BUS] proc1_pkt_hdr_o [0:`HDR_MAX_LEN - 1];

    // proc
    reg proc_mod_start_i;
    reg [`ADDR_BUS] proc_mod_hit_action_addr_i;
    reg [`ADDR_BUS] proc_mod_miss_action_addr_i;

    // parser
    reg ps_mod_start_i;
    reg [`DATA_BUS] ps_mod_hdr_id_i;
    reg [`DATA_BUS] ps_mod_hdr_len_i;
    reg [`DATA_BUS] ps_mod_next_tag_start_i;
    reg [`DATA_BUS] ps_mod_next_tag_len_i;
    reg [`DATA_BUS] ps_mod_next_table_i [`NEXT_TABLE_SIZE - 1:0];

    // matcher
    reg mt_mod_start_i;
    reg [3:0] mt_mod_match_hdr_id_i;
    reg [5:0] mt_mod_match_key_off_i;
    reg [5:0] mt_mod_match_key_len_i;
    reg [5:0] mt_mod_match_val_len_i;
    reg [`DATA_BUS] mt_logic_entry_len_i;
    reg [`DATA_BUS] mt_logic_start_addr_i;

    reg [`DATA_BUS] mt1_logic_start_addr_i;

    // executor
    reg ex_mod_start_i;
    reg [`QUAD_BUS] ex_mod_ops_i [0:`MAX_OP_NUM - 1];

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

    initial begin
        start_i <= `FALSE;
        #105 start_i <= `TRUE;
        #20 start_i <= `FALSE;
    end

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

    // axi crossbar

    // axi master 0 interface
    wire [0 : 0] m0_axi_awid;
    wire [31 : 0] m0_axi_awaddr;
    wire [7 : 0] m0_axi_awlen;
    wire [2 : 0] m0_axi_awsize;
    wire [1 : 0] m0_axi_awburst;
    wire [0 : 0] m0_axi_awlock;
    wire [3 : 0] m0_axi_awcache;
    wire [2 : 0] m0_axi_awprot;
    wire [3 : 0] m0_axi_awqos;
    wire [0 : 0] m0_axi_awvalid;
    wire [0 : 0] m0_axi_awready;
    wire [31 : 0] m0_axi_wdata;
    wire [3 : 0] m0_axi_wstrb;
    wire [0 : 0] m0_axi_wlast;
    wire [0 : 0] m0_axi_wvalid;
    wire [0 : 0] m0_axi_wready;
    wire [0 : 0] m0_axi_bid;
    wire [1 : 0] m0_axi_bresp;
    wire [0 : 0] m0_axi_bvalid;
    wire [0 : 0] m0_axi_bready;
    wire [0 : 0] m0_axi_arid;
    wire [31 : 0] m0_axi_araddr;
    wire [7 : 0] m0_axi_arlen;
    wire [2 : 0] m0_axi_arsize;
    wire [1 : 0] m0_axi_arburst;
    wire [0 : 0] m0_axi_arlock;
    wire [3 : 0] m0_axi_arcache;
    wire [2 : 0] m0_axi_arprot;
    wire [3 : 0] m0_axi_arqos;
    wire [0 : 0] m0_axi_arvalid;
    wire [0 : 0] m0_axi_arready;
    wire [0 : 0] m0_axi_rid;
    wire [31 : 0] m0_axi_rdata;
    wire [1 : 0] m0_axi_rresp;
    wire [0 : 0] m0_axi_rlast;
    wire [0 : 0] m0_axi_rvalid;
    wire [0 : 0] m0_axi_rready;

    // axi master 1 interface
    wire [0 : 0] m1_axi_awid;
    wire [31 : 0] m1_axi_awaddr;
    wire [7 : 0] m1_axi_awlen;
    wire [2 : 0] m1_axi_awsize;
    wire [1 : 0] m1_axi_awburst;
    wire [0 : 0] m1_axi_awlock;
    wire [3 : 0] m1_axi_awcache;
    wire [2 : 0] m1_axi_awprot;
    wire [3 : 0] m1_axi_awqos;
    wire [0 : 0] m1_axi_awvalid;
    wire [0 : 0] m1_axi_awready;
    wire [31 : 0] m1_axi_wdata;
    wire [3 : 0] m1_axi_wstrb;
    wire [0 : 0] m1_axi_wlast;
    wire [0 : 0] m1_axi_wvalid;
    wire [0 : 0] m1_axi_wready;
    wire [0 : 0] m1_axi_bid;
    wire [1 : 0] m1_axi_bresp;
    wire [0 : 0] m1_axi_bvalid;
    wire [0 : 0] m1_axi_bready;
    wire [0 : 0] m1_axi_arid;
    wire [31 : 0] m1_axi_araddr;
    wire [7 : 0] m1_axi_arlen;
    wire [2 : 0] m1_axi_arsize;
    wire [1 : 0] m1_axi_arburst;
    wire [0 : 0] m1_axi_arlock;
    wire [3 : 0] m1_axi_arcache;
    wire [2 : 0] m1_axi_arprot;
    wire [3 : 0] m1_axi_arqos;
    wire [0 : 0] m1_axi_arvalid;
    wire [0 : 0] m1_axi_arready;
    wire [0 : 0] m1_axi_rid;
    wire [31 : 0] m1_axi_rdata;
    wire [1 : 0] m1_axi_rresp;
    wire [0 : 0] m1_axi_rlast;
    wire [0 : 0] m1_axi_rvalid;
    wire [0 : 0] m1_axi_rready;

    // axi slave 0 interface
    wire [0 : 0] s0_axi_awid;
    wire [31 : 0] s0_axi_awaddr;
    wire [7 : 0] s0_axi_awlen;
    wire [2 : 0] s0_axi_awsize;
    wire [1 : 0] s0_axi_awburst;
    wire s0_axi_awlock;
    wire [3 : 0] s0_axi_awcache;
    wire [2 : 0] s0_axi_awprot;
    wire [3 : 0] s0_axi_awregion;
    wire s0_axi_awvalid;
    wire s0_axi_awready;
    wire [31 : 0] s0_axi_wdata;
    wire [3 : 0] s0_axi_wstrb;
    wire s0_axi_wlast;
    wire s0_axi_wvalid;
    wire s0_axi_wready;
    wire [0 : 0] s0_axi_bid;
    wire [1 : 0] s0_axi_bresp;
    wire s0_axi_bvalid;
    wire s0_axi_bready;
    wire [0 : 0] s0_axi_arid;
    wire [31 : 0] s0_axi_araddr;
    wire [7 : 0] s0_axi_arlen;
    wire [2 : 0] s0_axi_arsize;
    wire [1 : 0] s0_axi_arburst;
    wire s0_axi_arlock;
    wire [3 : 0] s0_axi_arcache;
    wire [2 : 0] s0_axi_arprot;
    wire [3 : 0] s0_axi_arregion;
    wire s0_axi_arvalid;
    wire s0_axi_arready;
    wire [0 : 0] s0_axi_rid;
    wire [31 : 0] s0_axi_rdata;
    wire [1 : 0] s0_axi_rresp;
    wire s0_axi_rlast;
    wire s0_axi_rvalid;
    wire s0_axi_rready;

    // axi slave 1 interface
    wire [0 : 0] s1_axi_awid;
    wire [31 : 0] s1_axi_awaddr;
    wire [7 : 0] s1_axi_awlen;
    wire [2 : 0] s1_axi_awsize;
    wire [1 : 0] s1_axi_awburst;
    wire s1_axi_awlock;
    wire [3 : 0] s1_axi_awcache;
    wire [2 : 0] s1_axi_awprot;
    wire [3 : 0] s1_axi_awregion;
    wire s1_axi_awvalid;
    wire s1_axi_awready;
    wire [31 : 0] s1_axi_wdata;
    wire [3 : 0] s1_axi_wstrb;
    wire s1_axi_wlast;
    wire s1_axi_wvalid;
    wire s1_axi_wready;
    wire [0 : 0] s1_axi_bid;
    wire [1 : 0] s1_axi_bresp;
    wire s1_axi_bvalid;
    wire s1_axi_bready;
    wire [0 : 0] s1_axi_arid;
    wire [31 : 0] s1_axi_araddr;
    wire [7 : 0] s1_axi_arlen;
    wire [2 : 0] s1_axi_arsize;
    wire [1 : 0] s1_axi_arburst;
    wire s1_axi_arlock;
    wire [3 : 0] s1_axi_arcache;
    wire [2 : 0] s1_axi_arprot;
    wire [3 : 0] s1_axi_arregion;
    wire s1_axi_arvalid;
    wire s1_axi_arready;
    wire [0 : 0] s1_axi_rid;
    wire [31 : 0] s1_axi_rdata;
    wire [1 : 0] s1_axi_rresp;
    wire s1_axi_rlast;
    wire s1_axi_rvalid;
    wire s1_axi_rready;

    axi_crossbar_0 axi_crossbar_mem(
        .aclk(clk),
        .aresetn(~rst),
        // connected to master devices
        .s_axi_awid({m1_axi_awid, m0_axi_awid}),
        .s_axi_awaddr({m1_axi_awaddr, m0_axi_awaddr}),
        .s_axi_awlen({m1_axi_awlen, m0_axi_awlen}),
        .s_axi_awsize({m1_axi_awsize, m0_axi_awsize}),
        .s_axi_awburst({m1_axi_awburst, m0_axi_awburst}),
        .s_axi_awlock({m1_axi_awlock, m0_axi_awlock}),
        .s_axi_awcache({m1_axi_awcache, m0_axi_awcache}),
        .s_axi_awprot({m1_axi_awprot, m0_axi_awprot}),
        .s_axi_awqos({m1_axi_awqos, m0_axi_awqos}),
        .s_axi_awvalid({m1_axi_awvalid, m0_axi_awvalid}),
        .s_axi_awready({m1_axi_awready, m0_axi_awready}),
        .s_axi_wdata({m1_axi_wdata, m0_axi_wdata}),
        .s_axi_wstrb({m1_axi_wstrb, m0_axi_wstrb}),
        .s_axi_wlast({m1_axi_wlast, m0_axi_wlast}),
        .s_axi_wvalid({m1_axi_wvalid, m0_axi_wvalid}),
        .s_axi_wready({m1_axi_wready, m0_axi_wready}),
        .s_axi_bid({m1_axi_bid, m0_axi_bid}),
        .s_axi_bresp({m1_axi_bresp, m0_axi_bresp}),
        .s_axi_bvalid({m1_axi_bvalid, m0_axi_bvalid}),
        .s_axi_bready({m1_axi_bready, m0_axi_bready}),
        .s_axi_arid({m1_axi_arid, m0_axi_arid}),
        .s_axi_araddr({m1_axi_araddr, m0_axi_araddr}),
        .s_axi_arlen({m1_axi_arlen, m0_axi_arlen}),
        .s_axi_arsize({m1_axi_arsize, m0_axi_arsize}),
        .s_axi_arburst({m1_axi_arburst, m0_axi_arburst}),
        .s_axi_arlock({m1_axi_arlock, m0_axi_arlock}),
        .s_axi_arcache({m1_axi_arcache, m0_axi_arcache}),
        .s_axi_arprot({m1_axi_arprot, m0_axi_arprot}),
        .s_axi_arqos({m1_axi_arqos, m0_axi_arqos}),
        .s_axi_arvalid({m1_axi_arvalid, m0_axi_arvalid}),
        .s_axi_arready({m1_axi_arready, m0_axi_arready}),
        .s_axi_rid({m1_axi_rid, m0_axi_rid}),
        .s_axi_rdata({m1_axi_rdata, m0_axi_rdata}),
        .s_axi_rresp({m1_axi_rresp, m0_axi_rresp}),
        .s_axi_rlast({m1_axi_rlast, m0_axi_rlast}),
        .s_axi_rvalid({m1_axi_rvalid, m0_axi_rvalid}),
        .s_axi_rready({m1_axi_rready, m0_axi_rready}),
        // connected to slave devices
        .m_axi_awid({s1_axi_awid, s0_axi_awid}),
        .m_axi_awaddr({s1_axi_awaddr, s0_axi_awaddr}),
        .m_axi_awlen({s1_axi_awlen, s0_axi_awlen}),
        .m_axi_awsize({s1_axi_awsize, s0_axi_awsize}),
        .m_axi_awburst({s1_axi_awburst, s0_axi_awburst}),
        .m_axi_awlock({s1_axi_awlock, s0_axi_awlock}),
        .m_axi_awcache({s1_axi_awcache, s0_axi_awcache}),
        .m_axi_awprot({s1_axi_awprot, s0_axi_awprot}),
        .m_axi_awregion({s1_axi_awregion, s0_axi_awregion}),
        // .m_axi_awqos({s1_axi_awqos, s0_axi_awqos}),
        .m_axi_awvalid({s1_axi_awvalid, s0_axi_awvalid}),
        .m_axi_awready({s1_axi_awready, s0_axi_awready}),
        .m_axi_wdata({s1_axi_wdata, s0_axi_wdata}),
        .m_axi_wstrb({s1_axi_wstrb, s0_axi_wstrb}),
        .m_axi_wlast({s1_axi_wlast, s0_axi_wlast}),
        .m_axi_wvalid({s1_axi_wvalid, s0_axi_wvalid}),
        .m_axi_wready({s1_axi_wready, s0_axi_wready}),
        .m_axi_bid({s1_axi_bid, s0_axi_bid}),
        .m_axi_bresp({s1_axi_bresp, s0_axi_bresp}),
        .m_axi_bvalid({s1_axi_bvalid, s0_axi_bvalid}),
        .m_axi_bready({s1_axi_bready, s0_axi_bready}),
        .m_axi_arid({s1_axi_arid, s0_axi_arid}),
        .m_axi_araddr({s1_axi_araddr, s0_axi_araddr}),
        .m_axi_arlen({s1_axi_arlen, s0_axi_arlen}),
        .m_axi_arsize({s1_axi_arsize, s0_axi_arsize}),
        .m_axi_arburst({s1_axi_arburst, s0_axi_arburst}),
        .m_axi_arlock({s1_axi_arlock, s0_axi_arlock}),
        .m_axi_arcache({s1_axi_arcache, s0_axi_arcache}),
        .m_axi_arprot({s1_axi_arprot, s0_axi_arprot}),
        .m_axi_arregion({s1_axi_arregion, s0_axi_arregion}),
        // .m_axi_arqos({s1_axi_arqos, s0_axi_arqos}),
        .m_axi_arvalid({s1_axi_arvalid, s0_axi_arvalid}),
        .m_axi_arready({s1_axi_arready, s0_axi_arready}),
        .m_axi_rid({s1_axi_rid, s0_axi_rid}),
        .m_axi_rdata({s1_axi_rdata, s0_axi_rdata}),
        .m_axi_rresp({s1_axi_rresp, s0_axi_rresp}),
        .m_axi_rlast({s1_axi_rlast, s0_axi_rlast}),
        .m_axi_rvalid({s1_axi_rvalid, s0_axi_rvalid}),
        .m_axi_rready({s1_axi_rready, s0_axi_rready})
    );

    // block ram 0
    blk_mem_gen_0 bram0(
        // rsta_busy,
        // rstb_busy,
        .s_aclk(clk),
        .s_aresetn(~rst),
        .s_axi_awid(s0_axi_awid),
        .s_axi_awaddr(s0_axi_awaddr),
        .s_axi_awlen(s0_axi_awlen),
        .s_axi_awsize(s0_axi_awsize),
        .s_axi_awburst(s0_axi_awburst),
        .s_axi_awvalid(s0_axi_awvalid),
        .s_axi_awready(s0_axi_awready),
        .s_axi_wdata(s0_axi_wdata),
        .s_axi_wstrb(s0_axi_wstrb),
        .s_axi_wlast(s0_axi_wlast),
        .s_axi_wvalid(s0_axi_wvalid),
        .s_axi_wready(s0_axi_wready),
        .s_axi_bid(s0_axi_bid),
        .s_axi_bresp(s0_axi_bresp),
        .s_axi_bvalid(s0_axi_bvalid),
        .s_axi_bready(s0_axi_bready),
        .s_axi_arid(s0_axi_arid),
        .s_axi_araddr(s0_axi_araddr),
        .s_axi_arlen(s0_axi_arlen),
        .s_axi_arsize(s0_axi_arsize),
        .s_axi_arburst(s0_axi_arburst),
        .s_axi_arvalid(s0_axi_arvalid),
        .s_axi_arready(s0_axi_arready),
        .s_axi_rid(s0_axi_rid),
        .s_axi_rdata(s0_axi_rdata),
        .s_axi_rresp(s0_axi_rresp),
        .s_axi_rlast(s0_axi_rlast),
        .s_axi_rvalid(s0_axi_rvalid),
        .s_axi_rready(s0_axi_rready)
    );

    // block ram 1
    blk_mem_gen_0 bram1(
        // rsta_busy,
        // rstb_busy,
        .s_aclk(clk),
        .s_aresetn(~rst),
        .s_axi_awid(s1_axi_awid),
        .s_axi_awaddr(s1_axi_awaddr),
        .s_axi_awlen(s1_axi_awlen),
        .s_axi_awsize(s1_axi_awsize),
        .s_axi_awburst(s1_axi_awburst),
        .s_axi_awvalid(s1_axi_awvalid),
        .s_axi_awready(s1_axi_awready),
        .s_axi_wdata(s1_axi_wdata),
        .s_axi_wstrb(s1_axi_wstrb),
        .s_axi_wlast(s1_axi_wlast),
        .s_axi_wvalid(s1_axi_wvalid),
        .s_axi_wready(s1_axi_wready),
        .s_axi_bid(s1_axi_bid),
        .s_axi_bresp(s1_axi_bresp),
        .s_axi_bvalid(s1_axi_bvalid),
        .s_axi_bready(s1_axi_bready),
        .s_axi_arid(s1_axi_arid),
        .s_axi_araddr(s1_axi_araddr),
        .s_axi_arlen(s1_axi_arlen),
        .s_axi_arsize(s1_axi_arsize),
        .s_axi_arburst(s1_axi_arburst),
        .s_axi_arvalid(s1_axi_arvalid),
        .s_axi_arready(s1_axi_arready),
        .s_axi_rid(s1_axi_rid),
        .s_axi_rdata(s1_axi_rdata),
        .s_axi_rresp(s1_axi_rresp),
        .s_axi_rlast(s1_axi_rlast),
        .s_axi_rvalid(s1_axi_rvalid),
        .s_axi_rready(s1_axi_rready)
    );

    // processor
    proc_axi #(.PROC_ID(0)) proc_axi0(
        .clk(clk),
        .rst(rst),
        // input
        .start_i(start_i),
        .pkt_hdr_i(pkt_hdr_i),
        // output
        .ready_o(proc0_ready_o),
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
        .axi_awid(m0_axi_awid),
        .axi_awaddr(m0_axi_awaddr),
        .axi_awlen(m0_axi_awlen),
        .axi_awsize(m0_axi_awsize),
        .axi_awburst(m0_axi_awburst),
        .axi_awlock(m0_axi_awlock),
        .axi_awcache(m0_axi_awcache),
        .axi_awprot(m0_axi_awprot),
        .axi_awqos(m0_axi_awqos),
        .axi_awvalid(m0_axi_awvalid),
        .axi_awready(m0_axi_awready),
        .axi_wdata(m0_axi_wdata),
        .axi_wstrb(m0_axi_wstrb),
        .axi_wlast(m0_axi_wlast),
        .axi_wvalid(m0_axi_wvalid),
        .axi_wready(m0_axi_wready),
        .axi_bid(m0_axi_bid),
        .axi_bresp(m0_axi_bresp),
        .axi_bvalid(m0_axi_bvalid),
        .axi_bready(m0_axi_bready),
        .axi_arid(m0_axi_arid),
        .axi_araddr(m0_axi_araddr),
        .axi_arlen(m0_axi_arlen),
        .axi_arsize(m0_axi_arsize),
        .axi_arburst(m0_axi_arburst),
        .axi_arlock(m0_axi_arlock),
        .axi_arcache(m0_axi_arcache),
        .axi_arprot(m0_axi_arprot),
        .axi_arqos(m0_axi_arqos),
        .axi_arvalid(m0_axi_arvalid),
        .axi_arready(m0_axi_arready),
        .axi_rid(m0_axi_rid),
        .axi_rdata(m0_axi_rdata),
        .axi_rresp(m0_axi_rresp),
        .axi_rlast(m0_axi_rlast),
        .axi_rvalid(m0_axi_rvalid),
        .axi_rready(m0_axi_rready)
    );

    proc_axi #(.PROC_ID(1)) proc_axi1(
        .clk(clk),
        .rst(rst),
        // input
        .start_i(start_i),
        .pkt_hdr_i(pkt_hdr_i),
        // output
        .ready_o(proc1_ready_o),
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
        .axi_awid(m1_axi_awid),
        .axi_awaddr(m1_axi_awaddr),
        .axi_awlen(m1_axi_awlen),
        .axi_awsize(m1_axi_awsize),
        .axi_awburst(m1_axi_awburst),
        .axi_awlock(m1_axi_awlock),
        .axi_awcache(m1_axi_awcache),
        .axi_awprot(m1_axi_awprot),
        .axi_awqos(m1_axi_awqos),
        .axi_awvalid(m1_axi_awvalid),
        .axi_awready(m1_axi_awready),
        .axi_wdata(m1_axi_wdata),
        .axi_wstrb(m1_axi_wstrb),
        .axi_wlast(m1_axi_wlast),
        .axi_wvalid(m1_axi_wvalid),
        .axi_wready(m1_axi_wready),
        .axi_bid(m1_axi_bid),
        .axi_bresp(m1_axi_bresp),
        .axi_bvalid(m1_axi_bvalid),
        .axi_bready(m1_axi_bready),
        .axi_arid(m1_axi_arid),
        .axi_araddr(m1_axi_araddr),
        .axi_arlen(m1_axi_arlen),
        .axi_arsize(m1_axi_arsize),
        .axi_arburst(m1_axi_arburst),
        .axi_arlock(m1_axi_arlock),
        .axi_arcache(m1_axi_arcache),
        .axi_arprot(m1_axi_arprot),
        .axi_arqos(m1_axi_arqos),
        .axi_arvalid(m1_axi_arvalid),
        .axi_arready(m1_axi_arready),
        .axi_rid(m1_axi_rid),
        .axi_rdata(m1_axi_rdata),
        .axi_rresp(m1_axi_rresp),
        .axi_rlast(m1_axi_rlast),
        .axi_rvalid(m1_axi_rvalid),
        .axi_rready(m1_axi_rready)
    );

    wire [`BYTE_BUS] ans_pkt_hdr [0:`HDR_MAX_LEN - 1];
    assign ans_pkt_hdr = {
        8'hde, 8'had, 8'hbe, 8'hef, 8'hfa, 8'hce, 8'hc8, 8'h58, 8'hc0, 8'hb5, 8'hfe, 8'h1e, 8'h08, 8'h00, 8'h45, 8'h00,
        8'h00, 8'h28, 8'h4c, 8'hd6, 8'h00, 8'h00, 8'hea, 8'h06, 8'hd6, 8'hfb, 8'h59, 8'hf8, 8'ha5, 8'h2c, 8'hb7, 8'hac,
        8'hf6, 8'h2c, 8'hc5, 8'h7f, 8'h4e, 8'h3c, 8'hba, 8'h38, 8'hf4, 8'hc6, 8'h00, 8'h00, 8'h00, 8'h00, 8'h50, 8'h02,
        8'h04, 8'h00, 8'h3c, 8'h29, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
        // padding
        8'h00, 8'h00, 8'h00, 8'h00
    };

    initial begin
        $display("===== BEGIN TEST =====");
        wait(proc0_ready_o);
        if (proc0_pkt_hdr_o == ans_pkt_hdr) begin
            $display("PROC0 PASSED!");
        end else begin
            $display("PROC0 FAILED!");
        end
        wait(proc1_ready_o);
        if (proc1_pkt_hdr_o == ans_pkt_hdr) begin
            $display("PROC1 PASSED!");
        end else begin
            $display("PROC1 FAILED!");
        end
        $display("===== END TEST =====");
    end

endmodule