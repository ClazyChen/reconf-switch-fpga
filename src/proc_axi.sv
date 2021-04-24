`include "def.svh"

module proc_axi #(
    parameter PROC_ID = 0
) (
    input wire clk,
    input wire rst,
    // input
    input wire start_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    // output
    output reg ready_o,
    output reg [`BYTE_BUS] pkt_hdr_o [0:`HDR_MAX_LEN - 1],
    // proc mod
    input wire proc_mod_start_i,
    input wire [`ADDR_BUS] proc_mod_hit_action_addr_i,
    input wire [`ADDR_BUS] proc_mod_miss_action_addr_i,
    // parser mod
    input wire ps_mod_start_i,
    input wire [`DATA_BUS] ps_mod_hdr_id_i,
    input wire [`DATA_BUS] ps_mod_hdr_len_i,
    input wire [`DATA_BUS] ps_mod_next_tag_start_i,
    input wire [`DATA_BUS] ps_mod_next_tag_len_i,
    input wire [`DATA_BUS] ps_mod_next_table_i [`NEXT_TABLE_SIZE - 1:0],
    // matcher mod
    input wire mt_mod_start_i,
    input wire [3:0] mt_mod_match_hdr_id_i,
    input wire [5:0] mt_mod_match_key_off_i,
    input wire [5:0] mt_mod_match_key_len_i,
    input wire [5:0] mt_mod_match_val_len_i,
    input wire [`DATA_BUS] mt_logic_entry_len_i,
    input wire [`DATA_BUS] mt_logic_start_addr_i,
    // executor mod
    input wire ex_mod_start_i,
    input wire [`QUAD_BUS] ex_mod_ops_i [0:`MAX_OP_NUM - 1],
    // axi
    output reg [0 : 0] axi_awid,
    output reg [31 : 0] axi_awaddr,
    output reg [7 : 0] axi_awlen,
    output reg [2 : 0] axi_awsize,
    output reg [1 : 0] axi_awburst,
    output reg [0 : 0] axi_awlock,
    output reg [3 : 0] axi_awcache,
    output reg [2 : 0] axi_awprot,
    output reg [3 : 0] axi_awqos,
    output reg [0 : 0] axi_awvalid,
    input wire [0 : 0] axi_awready,
    output reg [31 : 0] axi_wdata,
    output reg [3 : 0] axi_wstrb,
    output reg [0 : 0] axi_wlast,
    output reg [0 : 0] axi_wvalid,
    input wire [0 : 0] axi_wready,
    input wire [0 : 0] axi_bid,
    input wire [1 : 0] axi_bresp,
    input wire [0 : 0] axi_bvalid,
    output reg [0 : 0] axi_bready,
    output reg [0 : 0] axi_arid,
    output reg [31 : 0] axi_araddr,
    output reg [7 : 0] axi_arlen,
    output reg [2 : 0] axi_arsize,
    output reg [1 : 0] axi_arburst,
    output reg [0 : 0] axi_arlock,
    output reg [3 : 0] axi_arcache,
    output reg [2 : 0] axi_arprot,
    output reg [3 : 0] axi_arqos,
    output reg [0 : 0] axi_arvalid,
    input wire [0 : 0] axi_arready,
    input wire [0 : 0] axi_rid,
    input wire [31 : 0] axi_rdata,
    input wire [1 : 0] axi_rresp,
    input wire [0 : 0] axi_rlast,
    input wire [0 : 0] axi_rvalid,
    output reg [0 : 0] axi_rready
);
    // mem
    wire mem_ce_o;
    wire mem_we_o;
    wire [`ADDR_BUS] mem_addr_o;
    wire [3:0] mem_width_o;
    wire [`DATA_BUS] mem_data_o;
    wire [`DATA_BUS] mem_data_i;
    wire mem_ready_i;

    // processor
    proc #(
        .PROC_ID(PROC_ID)
    ) proc0(
        .clk(clk),
        .rst(rst),
        .start_i(start_i),
        .pkt_hdr_i(pkt_hdr_i),
        // mem
        .mem_ce_o(mem_ce_o),
        .mem_we_o(mem_we_o),
        .mem_addr_o(mem_addr_o),
        .mem_width_o(mem_width_o),
        .mem_data_o(mem_data_o),
        .mem_data_i(mem_data_i),
        .mem_ready_i(mem_ready_i),
        // output
        .ready_o(ready_o),
        .pkt_hdr_o(pkt_hdr_o),
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
        .ex_mod_ops_i(ex_mod_ops_i)
    );

    mem_axi #(
        .AXI_ID(PROC_ID)
    ) mem_axi0 (
        .clk(clk),
        .rst(rst),
        // mem
        .mem_ce_i(mem_ce_o),
        .mem_we_i(mem_we_o),
        .mem_addr_i(mem_addr_o),
        .mem_data_i(mem_data_o),
        .mem_data_o(mem_data_i),
        .mem_ready_o(mem_ready_i),
        // axi
        .axi_awid(axi_awid),
        .axi_awaddr(axi_awaddr),
        .axi_awlen(axi_awlen),
        .axi_awsize(axi_awsize),
        .axi_awburst(axi_awburst),
        .axi_awlock(axi_awlock),
        .axi_awcache(axi_awcache),
        .axi_awprot(axi_awprot),
        .axi_awqos(axi_awqos),
        .axi_awvalid(axi_awvalid),
        .axi_awready(axi_awready),
        .axi_wdata(axi_wdata),
        .axi_wstrb(axi_wstrb),
        .axi_wlast(axi_wlast),
        .axi_wvalid(axi_wvalid),
        .axi_wready(axi_wready),
        .axi_bid(axi_bid),
        .axi_bresp(axi_bresp),
        .axi_bvalid(axi_bvalid),
        .axi_bready(axi_bready),
        .axi_arid(axi_arid),
        .axi_araddr(axi_araddr),
        .axi_arlen(axi_arlen),
        .axi_arsize(axi_arsize),
        .axi_arburst(axi_arburst),
        .axi_arlock(axi_arlock),
        .axi_arcache(axi_arcache),
        .axi_arprot(axi_arprot),
        .axi_arqos(axi_arqos),
        .axi_arvalid(axi_arvalid),
        .axi_arready(axi_arready),
        .axi_rid(axi_rid),
        .axi_rdata(axi_rdata),
        .axi_rresp(axi_rresp),
        .axi_rlast(axi_rlast),
        .axi_rvalid(axi_rvalid),
        .axi_rready(axi_rready)
    );

endmodule