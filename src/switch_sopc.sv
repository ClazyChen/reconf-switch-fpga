`include "def.svh"

module switch_sopc (
    input wire clk,
    input wire rst,
    // switch input
    input wire sw_wr_i,
    input wire [`BYTE_BUS] sw_pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    output reg sw_in_empty_o,
    // switch output
    input wire sw_rd_i,
    output reg [`BYTE_BUS] sw_pkt_hdr_o [0:`HDR_MAX_LEN - 1],
    output reg [`NUM_PORTS - 1:0] sw_out_port_o,
    output reg sw_out_empty_o,

    // flow table manip by controller
    input wire ctrl_mem_ce_i,
    input wire ctrl_mem_we_i,
    input wire [`ADDR_BUS] ctrl_mem_addr_i,
    input wire [`DATA_BUS] ctrl_mem_data_i,
    output reg [`DATA_BUS] ctrl_mem_data_o,
    output reg ctrl_mem_ready_o,

    // proc 0
    // parser mod
    input wire ps0_mod_start_i,
    input wire [`DATA_BUS] ps0_mod_hdr_id_i,
    input wire [`DATA_BUS] ps0_mod_hdr_len_i,
    input wire [`DATA_BUS] ps0_mod_next_tag_start_i,
    input wire [`DATA_BUS] ps0_mod_next_tag_len_i,
    input wire [`DATA_BUS] ps0_mod_next_table_i [`NEXT_TABLE_SIZE - 1:0],
    // matcher mod
    input wire mt0_mod_start_i,
    input wire [3:0] mt0_mod_match_hdr_id_i,
    input wire [5:0] mt0_mod_match_key_off_i,
    input wire [5:0] mt0_mod_match_key_len_i,
    input wire [5:0] mt0_mod_match_val_len_i,
    input wire [`DATA_BUS] mt0_mod_logic_entry_len_i,
    input wire [`DATA_BUS] mt0_mod_logic_start_addr_i,
    input wire [`BYTE_BUS] mt0_mod_logic_tag,
    input wire mt0_mod_is_counter_table,
    // executor mod
    input wire ex0_mod_start_i,
    input wire [`ADDR_BUS] ex0_mod_hit_action_addr_i,
    input wire [`ADDR_BUS] ex0_mod_miss_action_addr_i,
    input wire [`QUAD_BUS] ex0_mod_ops_i [0:`MAX_OP_NUM - 1],

    // proc 1
    // parser mod
    input wire ps1_mod_start_i,
    input wire [`DATA_BUS] ps1_mod_hdr_id_i,
    input wire [`DATA_BUS] ps1_mod_hdr_len_i,
    input wire [`DATA_BUS] ps1_mod_next_tag_start_i,
    input wire [`DATA_BUS] ps1_mod_next_tag_len_i,
    input wire [`DATA_BUS] ps1_mod_next_table_i [`NEXT_TABLE_SIZE - 1:0],
    // matcher mod
    input wire mt1_mod_start_i,
    input wire [3:0] mt1_mod_match_hdr_id_i,
    input wire [5:0] mt1_mod_match_key_off_i,
    input wire [5:0] mt1_mod_match_key_len_i,
    input wire [5:0] mt1_mod_match_val_len_i,
    input wire [`DATA_BUS] mt1_mod_logic_entry_len_i,
    input wire [`DATA_BUS] mt1_mod_logic_start_addr_i,
    input wire [`BYTE_BUS] mt1_mod_logic_tag,
    input wire mt1_mod_is_counter_table,
    // executor mod
    input wire ex1_mod_start_i,
    input wire [`ADDR_BUS] ex1_mod_hit_action_addr_i,
    input wire [`ADDR_BUS] ex1_mod_miss_action_addr_i,
    input wire [`QUAD_BUS] ex1_mod_ops_i [0:`MAX_OP_NUM - 1]
);

    // axi crossbar

    // axi master interfaces
    wire [`ID_WIDTH - 1 : 0] m_axi_awid [`NUM_MASTERS - 1:0];
    wire [31 : 0] m_axi_awaddr [`NUM_MASTERS - 1:0];
    wire [7 : 0] m_axi_awlen [`NUM_MASTERS - 1:0];
    wire [2 : 0] m_axi_awsize [`NUM_MASTERS - 1:0];
    wire [1 : 0] m_axi_awburst [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_awlock [`NUM_MASTERS - 1:0];
    wire [3 : 0] m_axi_awcache [`NUM_MASTERS - 1:0];
    wire [2 : 0] m_axi_awprot [`NUM_MASTERS - 1:0];
    wire [3 : 0] m_axi_awqos [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_awvalid [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_awready [`NUM_MASTERS - 1:0];
    wire [31 : 0] m_axi_wdata [`NUM_MASTERS - 1:0];
    wire [3 : 0] m_axi_wstrb [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_wlast [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_wvalid [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_wready [`NUM_MASTERS - 1:0];
    wire [`ID_WIDTH - 1 : 0] m_axi_bid [`NUM_MASTERS - 1:0];
    wire [1 : 0] m_axi_bresp [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_bvalid [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_bready [`NUM_MASTERS - 1:0];
    wire [`ID_WIDTH - 1 : 0] m_axi_arid [`NUM_MASTERS - 1:0];
    wire [31 : 0] m_axi_araddr [`NUM_MASTERS - 1:0];
    wire [7 : 0] m_axi_arlen [`NUM_MASTERS - 1:0];
    wire [2 : 0] m_axi_arsize [`NUM_MASTERS - 1:0];
    wire [1 : 0] m_axi_arburst [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_arlock [`NUM_MASTERS - 1:0];
    wire [3 : 0] m_axi_arcache [`NUM_MASTERS - 1:0];
    wire [2 : 0] m_axi_arprot [`NUM_MASTERS - 1:0];
    wire [3 : 0] m_axi_arqos [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_arvalid [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_arready [`NUM_MASTERS - 1:0];
    wire [`ID_WIDTH - 1 : 0] m_axi_rid [`NUM_MASTERS - 1:0];
    wire [31 : 0] m_axi_rdata [`NUM_MASTERS - 1:0];
    wire [1 : 0] m_axi_rresp [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_rlast [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_rvalid [`NUM_MASTERS - 1:0];
    wire [0 : 0] m_axi_rready [`NUM_MASTERS - 1:0];

    // axi slave interfaces
    wire [`ID_WIDTH - 1 : 0] s_axi_awid [`NUM_SLAVES - 1:0];
    wire [31 : 0] s_axi_awaddr [`NUM_SLAVES - 1:0];
    wire [7 : 0] s_axi_awlen [`NUM_SLAVES - 1:0];
    wire [2 : 0] s_axi_awsize [`NUM_SLAVES - 1:0];
    wire [1 : 0] s_axi_awburst [`NUM_SLAVES - 1:0];
    wire s_axi_awlock [`NUM_SLAVES - 1:0];
    wire [3 : 0] s_axi_awcache [`NUM_SLAVES - 1:0];
    wire [2 : 0] s_axi_awprot [`NUM_SLAVES - 1:0];
    wire [3 : 0] s_axi_awregion [`NUM_SLAVES - 1:0];
    wire s_axi_awvalid [`NUM_SLAVES - 1:0];
    wire s_axi_awready [`NUM_SLAVES - 1:0];
    wire [31 : 0] s_axi_wdata [`NUM_SLAVES - 1:0];
    wire [3 : 0] s_axi_wstrb [`NUM_SLAVES - 1:0];
    wire s_axi_wlast [`NUM_SLAVES - 1:0];
    wire s_axi_wvalid [`NUM_SLAVES - 1:0];
    wire s_axi_wready [`NUM_SLAVES - 1:0];
    wire [`ID_WIDTH - 1 : 0] s_axi_bid [`NUM_SLAVES - 1:0];
    wire [1 : 0] s_axi_bresp [`NUM_SLAVES - 1:0];
    wire s_axi_bvalid [`NUM_SLAVES - 1:0];
    wire s_axi_bready [`NUM_SLAVES - 1:0];
    wire [`ID_WIDTH - 1 : 0] s_axi_arid [`NUM_SLAVES - 1:0];
    wire [31 : 0] s_axi_araddr [`NUM_SLAVES - 1:0];
    wire [7 : 0] s_axi_arlen [`NUM_SLAVES - 1:0];
    wire [2 : 0] s_axi_arsize [`NUM_SLAVES - 1:0];
    wire [1 : 0] s_axi_arburst [`NUM_SLAVES - 1:0];
    wire s_axi_arlock [`NUM_SLAVES - 1:0];
    wire [3 : 0] s_axi_arcache [`NUM_SLAVES - 1:0];
    wire [2 : 0] s_axi_arprot [`NUM_SLAVES - 1:0];
    wire [3 : 0] s_axi_arregion [`NUM_SLAVES - 1:0];
    wire s_axi_arvalid [`NUM_SLAVES - 1:0];
    wire s_axi_arready [`NUM_SLAVES - 1:0];
    wire [`ID_WIDTH - 1 : 0] s_axi_rid [`NUM_SLAVES - 1:0];
    wire [31 : 0] s_axi_rdata [`NUM_SLAVES - 1:0];
    wire [1 : 0] s_axi_rresp [`NUM_SLAVES - 1:0];
    wire s_axi_rlast [`NUM_SLAVES - 1:0];
    wire s_axi_rvalid [`NUM_SLAVES - 1:0];
    wire s_axi_rready [`NUM_SLAVES - 1:0];

    axi_crossbar_0 axi_crossbar_mem(
        .aclk(clk),
        .aresetn(~rst),
        // connected to master devices
        .s_axi_awid({m_axi_awid[2], m_axi_awid[1], m_axi_awid[0]}),
        .s_axi_awaddr({m_axi_awaddr[2], m_axi_awaddr[1], m_axi_awaddr[0]}),
        .s_axi_awlen({m_axi_awlen[2], m_axi_awlen[1], m_axi_awlen[0]}),
        .s_axi_awsize({m_axi_awsize[2], m_axi_awsize[1], m_axi_awsize[0]}),
        .s_axi_awburst({m_axi_awburst[2], m_axi_awburst[1], m_axi_awburst[0]}),
        .s_axi_awlock({m_axi_awlock[2], m_axi_awlock[1], m_axi_awlock[0]}),
        .s_axi_awcache({m_axi_awcache[2], m_axi_awcache[1], m_axi_awcache[0]}),
        .s_axi_awprot({m_axi_awprot[2], m_axi_awprot[1], m_axi_awprot[0]}),
        .s_axi_awqos({m_axi_awqos[2], m_axi_awqos[1], m_axi_awqos[0]}),
        .s_axi_awvalid({m_axi_awvalid[2], m_axi_awvalid[1], m_axi_awvalid[0]}),
        .s_axi_awready({m_axi_awready[2], m_axi_awready[1], m_axi_awready[0]}),
        .s_axi_wdata({m_axi_wdata[2], m_axi_wdata[1], m_axi_wdata[0]}),
        .s_axi_wstrb({m_axi_wstrb[2], m_axi_wstrb[1], m_axi_wstrb[0]}),
        .s_axi_wlast({m_axi_wlast[2], m_axi_wlast[1], m_axi_wlast[0]}),
        .s_axi_wvalid({m_axi_wvalid[2], m_axi_wvalid[1], m_axi_wvalid[0]}),
        .s_axi_wready({m_axi_wready[2], m_axi_wready[1], m_axi_wready[0]}),
        .s_axi_bid({m_axi_bid[2], m_axi_bid[1], m_axi_bid[0]}),
        .s_axi_bresp({m_axi_bresp[2], m_axi_bresp[1], m_axi_bresp[0]}),
        .s_axi_bvalid({m_axi_bvalid[2], m_axi_bvalid[1], m_axi_bvalid[0]}),
        .s_axi_bready({m_axi_bready[2], m_axi_bready[1], m_axi_bready[0]}),
        .s_axi_arid({m_axi_arid[2], m_axi_arid[1], m_axi_arid[0]}),
        .s_axi_araddr({m_axi_araddr[2], m_axi_araddr[1], m_axi_araddr[0]}),
        .s_axi_arlen({m_axi_arlen[2], m_axi_arlen[1], m_axi_arlen[0]}),
        .s_axi_arsize({m_axi_arsize[2], m_axi_arsize[1], m_axi_arsize[0]}),
        .s_axi_arburst({m_axi_arburst[2], m_axi_arburst[1], m_axi_arburst[0]}),
        .s_axi_arlock({m_axi_arlock[2], m_axi_arlock[1], m_axi_arlock[0]}),
        .s_axi_arcache({m_axi_arcache[2], m_axi_arcache[1], m_axi_arcache[0]}),
        .s_axi_arprot({m_axi_arprot[2], m_axi_arprot[1], m_axi_arprot[0]}),
        .s_axi_arqos({m_axi_arqos[2], m_axi_arqos[1], m_axi_arqos[0]}),
        .s_axi_arvalid({m_axi_arvalid[2], m_axi_arvalid[1], m_axi_arvalid[0]}),
        .s_axi_arready({m_axi_arready[2], m_axi_arready[1], m_axi_arready[0]}),
        .s_axi_rid({m_axi_rid[2], m_axi_rid[1], m_axi_rid[0]}),
        .s_axi_rdata({m_axi_rdata[2], m_axi_rdata[1], m_axi_rdata[0]}),
        .s_axi_rresp({m_axi_rresp[2], m_axi_rresp[1], m_axi_rresp[0]}),
        .s_axi_rlast({m_axi_rlast[2], m_axi_rlast[1], m_axi_rlast[0]}),
        .s_axi_rvalid({m_axi_rvalid[2], m_axi_rvalid[1], m_axi_rvalid[0]}),
        .s_axi_rready({m_axi_rready[2], m_axi_rready[1], m_axi_rready[0]}),
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

    // proc 0 io
    wire proc0_in_empty_i;
    wire proc0_in_rd_o;
    wire [`BYTE_BUS] proc0_pkt_hdr_i [0:`HDR_MAX_LEN - 1];
    wire [`NUM_PORTS - 1:0] proc0_out_port_i;

    wire proc0_out_empty_i;
    wire proc0_out_wr_o;
    wire [`BYTE_BUS] proc0_pkt_hdr_o [0:`HDR_MAX_LEN - 1];
    wire [`NUM_PORTS - 1:0] proc0_out_port_o;

    // proc 1 io
    wire proc1_in_empty_i;
    wire proc1_in_rd_o;
    wire [`BYTE_BUS] proc1_pkt_hdr_i [0:`HDR_MAX_LEN - 1];
    wire [`NUM_PORTS - 1:0] proc1_out_port_i;

    wire proc1_out_empty_i;
    wire proc1_out_wr_o;
    wire [`BYTE_BUS] proc1_pkt_hdr_o [0:`HDR_MAX_LEN - 1];
    wire [`NUM_PORTS - 1:0] proc1_out_port_o;

    proc_axi #(
        .PROC_ID(0)
    ) proc_axi0(
        .clk(clk),
        .rst(rst),
        // input
        .in_empty_i(proc0_in_empty_i),
        .in_rd_o(proc0_in_rd_o),
        .pkt_hdr_i(proc0_pkt_hdr_i),
        .out_port_i(proc0_out_port_i),
        // output
        .out_empty_i(proc0_out_empty_i),
        .out_wr_o(proc0_out_wr_o),
        .pkt_hdr_o(proc0_pkt_hdr_o),
        .out_port_o(proc0_out_port_o),
        // parser
        .ps_mod_start_i(ps0_mod_start_i),
        .ps_mod_hdr_id_i(ps0_mod_hdr_id_i),
        .ps_mod_hdr_len_i(ps0_mod_hdr_len_i),
        .ps_mod_next_tag_start_i(ps0_mod_next_tag_start_i),
        .ps_mod_next_tag_len_i(ps0_mod_next_tag_len_i),
        .ps_mod_next_table_i(ps0_mod_next_table_i),
        // matcher
        .mt_mod_start_i(mt0_mod_start_i),
        .mt_mod_match_hdr_id_i(mt0_mod_match_hdr_id_i),
        .mt_mod_match_key_off_i(mt0_mod_match_key_off_i),
        .mt_mod_match_key_len_i(mt0_mod_match_key_len_i),
        .mt_mod_match_val_len_i(mt0_mod_match_val_len_i),
        .mt_logic_entry_len_i(mt0_mod_logic_entry_len_i),
        .mt_logic_start_addr_i(mt0_mod_logic_start_addr_i),
        .mt_mod_logic_tag(mt0_mod_logic_tag),
        .mt_mod_is_counter_table(mt0_mod_is_counter_table),
        // executor
        .ex_mod_start_i(ex0_mod_start_i),
        .ex_mod_hit_action_addr_i(ex0_mod_hit_action_addr_i),
        .ex_mod_miss_action_addr_i(ex0_mod_miss_action_addr_i),
        .ex_mod_ops_i(ex0_mod_ops_i),
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

    proc_axi #(
        .PROC_ID(1)
    ) proc_axi1(
        .clk(clk),
        .rst(rst),
        // input
        .in_empty_i(proc1_in_empty_i),
        .in_rd_o(proc1_in_rd_o),
        .pkt_hdr_i(proc1_pkt_hdr_i),
        .out_port_i(proc1_out_port_i),
        // output
        .out_empty_i(proc1_out_empty_i),
        .out_wr_o(proc1_out_wr_o),
        .pkt_hdr_o(proc1_pkt_hdr_o),
        .out_port_o(proc1_out_port_o),
        // parser
        .ps_mod_start_i(ps1_mod_start_i),
        .ps_mod_hdr_id_i(ps1_mod_hdr_id_i),
        .ps_mod_hdr_len_i(ps1_mod_hdr_len_i),
        .ps_mod_next_tag_start_i(ps1_mod_next_tag_start_i),
        .ps_mod_next_tag_len_i(ps1_mod_next_tag_len_i),
        .ps_mod_next_table_i(ps1_mod_next_table_i),
        // matcher
        .mt_mod_start_i(mt1_mod_start_i),
        .mt_mod_match_hdr_id_i(mt1_mod_match_hdr_id_i),
        .mt_mod_match_key_off_i(mt1_mod_match_key_off_i),
        .mt_mod_match_key_len_i(mt1_mod_match_key_len_i),
        .mt_mod_match_val_len_i(mt1_mod_match_val_len_i),
        .mt_logic_entry_len_i(mt1_mod_logic_entry_len_i),
        .mt_logic_start_addr_i(mt1_mod_logic_start_addr_i),
        .mt_mod_logic_tag(mt1_mod_logic_tag),
        .mt_mod_is_counter_table(mt1_mod_is_counter_table),
        // executor
        .ex_mod_start_i(ex1_mod_start_i),
        .ex_mod_hit_action_addr_i(ex1_mod_hit_action_addr_i),
        .ex_mod_miss_action_addr_i(ex1_mod_miss_action_addr_i),
        .ex_mod_ops_i(ex1_mod_ops_i),
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

    // dataplane flow table api
    mem_axi #(
        .AXI_ID(2)
    ) mem_axi_ctrl (
        .clk(clk),
        .rst(rst),
        // mem
        .mem_ce_i(ctrl_mem_ce_i),
        .mem_we_i(ctrl_mem_we_i),
        .mem_addr_i(ctrl_mem_addr_i),
        .mem_data_i(ctrl_mem_data_i),
        .mem_data_o(ctrl_mem_data_o),
        .mem_ready_o(ctrl_mem_ready_o),
        // axi
        .axi_awid(m_axi_awid[2]),
        .axi_awaddr(m_axi_awaddr[2]),
        .axi_awlen(m_axi_awlen[2]),
        .axi_awsize(m_axi_awsize[2]),
        .axi_awburst(m_axi_awburst[2]),
        .axi_awlock(m_axi_awlock[2]),
        .axi_awcache(m_axi_awcache[2]),
        .axi_awprot(m_axi_awprot[2]),
        .axi_awqos(m_axi_awqos[2]),
        .axi_awvalid(m_axi_awvalid[2]),
        .axi_awready(m_axi_awready[2]),
        .axi_wdata(m_axi_wdata[2]),
        .axi_wstrb(m_axi_wstrb[2]),
        .axi_wlast(m_axi_wlast[2]),
        .axi_wvalid(m_axi_wvalid[2]),
        .axi_wready(m_axi_wready[2]),
        .axi_bid(m_axi_bid[2]),
        .axi_bresp(m_axi_bresp[2]),
        .axi_bvalid(m_axi_bvalid[2]),
        .axi_bready(m_axi_bready[2]),
        .axi_arid(m_axi_arid[2]),
        .axi_araddr(m_axi_araddr[2]),
        .axi_arlen(m_axi_arlen[2]),
        .axi_arsize(m_axi_arsize[2]),
        .axi_arburst(m_axi_arburst[2]),
        .axi_arlock(m_axi_arlock[2]),
        .axi_arcache(m_axi_arcache[2]),
        .axi_arprot(m_axi_arprot[2]),
        .axi_arqos(m_axi_arqos[2]),
        .axi_arvalid(m_axi_arvalid[2]),
        .axi_arready(m_axi_arready[2]),
        .axi_rid(m_axi_rid[2]),
        .axi_rdata(m_axi_rdata[2]),
        .axi_rresp(m_axi_rresp[2]),
        .axi_rlast(m_axi_rlast[2]),
        .axi_rvalid(m_axi_rvalid[2]),
        .axi_rready(m_axi_rready[2])
    );

    // latches
    wire latch0_empty_i;
    wire latch1_empty_i;
    wire latch2_empty_i;

    // latch0: input <-> proc 0
    proc_latch proc_latch0 (
        .clk(clk),
        .rst(rst),
        // switch in
        .wr_i(sw_wr_i),
        .pkt_hdr_i(sw_pkt_hdr_i),
        .out_port_i(4'h0),
        // proc 0 in
        .rd_i(proc0_in_rd_o),
        .pkt_hdr_o(proc0_pkt_hdr_i),
        .out_port_o(proc0_out_port_i),
        .empty_o(latch0_empty_i)
    );
    assign proc0_in_empty_i = latch0_empty_i;
    assign sw_in_empty_o = latch0_empty_i;

    // latch1: proc 0 <-> proc 1
    proc_latch proc_latch1 (
        .clk(clk),
        .rst(rst),
        // proc 0 out
        .wr_i(proc0_out_wr_o),
        .pkt_hdr_i(proc0_pkt_hdr_o),
        .out_port_i(proc0_out_port_o),
        // proc 1 in
        .rd_i(proc1_in_rd_o),
        .pkt_hdr_o(proc1_pkt_hdr_i),
        .out_port_o(proc1_out_port_i),
        .empty_o(latch1_empty_i)
    );
    assign proc1_in_empty_i = latch1_empty_i;
    assign proc0_out_empty_i = latch1_empty_i;

    // latch2: proc1 <-> output
    proc_latch proc_latch2 (
        .clk(clk),
        .rst(rst),
        // proc 1 out
        .wr_i(proc1_out_wr_o),
        .pkt_hdr_i(proc1_pkt_hdr_o),
        .out_port_i(proc1_out_port_o),
        // switch out
        .rd_i(sw_rd_i),
        .pkt_hdr_o(sw_pkt_hdr_o),
        .out_port_o(sw_out_port_o),
        .empty_o(latch2_empty_i)
    );
    assign proc1_out_empty_i = latch2_empty_i;
    assign sw_out_empty_o = latch2_empty_i;

endmodule