`include "def.svh"

module mem_axi #(
    parameter AXI_ID = 0
) (
    input wire clk,
    input wire rst,
    // mem
    input wire mem_ce_i,
    input wire mem_we_i,
    input wire [`ADDR_BUS] mem_addr_i,
    input wire [`DATA_BUS] mem_data_i,  // write data
    output reg [`DATA_BUS] mem_data_o,  // read data
    output reg mem_ready_o,
    // axi
    // aw
    output reg [`ID_WIDTH - 1 : 0] axi_awid,
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
    // w
    output reg [31 : 0] axi_wdata,
    output reg [3 : 0] axi_wstrb,
    output reg [0 : 0] axi_wlast,
    output reg [0 : 0] axi_wvalid,
    input wire [0 : 0] axi_wready,
    // b
    input wire [`ID_WIDTH - 1 : 0] axi_bid,
    input wire [1 : 0] axi_bresp,
    input wire [0 : 0] axi_bvalid,
    output reg [0 : 0] axi_bready,
    // ar
    output reg [`ID_WIDTH - 1 : 0] axi_arid,
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
    // r
    input wire [`ID_WIDTH - 1 : 0] axi_rid,
    input wire [31 : 0] axi_rdata,
    input wire [1 : 0] axi_rresp,
    input wire [0 : 0] axi_rlast,
    input wire [0 : 0] axi_rvalid,
    output reg [0 : 0] axi_rready
);

    // aw
    assign axi_awlen = 0;
    assign axi_awsize = 0;
    assign axi_awburst = 0;
    assign axi_awlock = 0;
    assign axi_awcache = 0;
    assign axi_awprot = 0;
    assign axi_awqos = 0;
    // w
    assign axi_awid = AXI_ID;
    assign axi_wstrb = 4'b1111;
    assign axi_wlast = 1;
    // b
    assign axi_bready = 1;
    // ar
    assign axi_arid = AXI_ID;
    assign axi_arlen = 0;
    assign axi_arsize = 0;
    assign axi_arburst = 0;
    assign axi_arlock = 0;
    assign axi_arcache = 0;
    assign axi_arprot = 0;
    assign axi_arqos = 0;
    // r
    assign axi_rready = 1;

    // output
    assign mem_data_o = (mem_ce_i & ~mem_we_i) ? axi_rdata : `ZERO_WORD;
    assign mem_ready_o = (mem_ce_i == `TRUE) ? (mem_we_i ? axi_bvalid : axi_rvalid) : `FALSE;

    enum {
        WR_FREE, WR_ADDR, WR_DATA
    } wr_state;

    enum {
        RD_FREE, RD_ADDR, RD_DATA
    } rd_state;

    always @(posedge clk) begin
        if (rst == `TRUE || mem_ce_i == `FALSE) begin
            // state
            wr_state <= WR_FREE;
            rd_state <= RD_FREE;
            // axi
            axi_awaddr <= `ZERO_ADDR;
            axi_awvalid <= `FALSE;
            // w
            axi_wdata <= `ZERO_WORD;
            axi_wvalid <= `FALSE;
            // ar
            axi_araddr <= `ZERO_ADDR;
            axi_arvalid <= `FALSE;
        end else begin
            if (mem_we_i == `FALSE) begin
                // read from axi
                // disable write signals
                axi_awvalid <= `FALSE;
                axi_wvalid <= `FALSE;
                // do read
                case (rd_state)
                RD_FREE: begin
                    // enable read signals
                    axi_araddr <= mem_addr_i;
                    axi_arvalid <= `TRUE;
                    rd_state <= RD_ADDR;
                end
                RD_ADDR: begin
                    if (axi_arready == `TRUE) begin
                        axi_arvalid <= `FALSE;
                        rd_state <= RD_DATA;
                    end
                end
                RD_DATA: begin
                    if (axi_rvalid == `TRUE) begin
                        rd_state <= RD_FREE;
                    end
                end
                endcase
            end else begin
                // write
                // disable read signals
                axi_arvalid <= `FALSE;
                // do write
                case (wr_state)
                WR_FREE: begin
                    axi_awaddr <= mem_addr_i;
                    axi_awvalid <= `TRUE;
                    axi_wdata <= mem_data_i;
                    axi_wvalid <= `TRUE;
                    wr_state <= WR_ADDR;
                end
                WR_ADDR: begin
                    if (axi_awready) begin
                        axi_awvalid = `FALSE;
                        wr_state <= WR_DATA;
                    end
                end
                WR_DATA: begin
                    if (axi_bvalid) begin
                        wr_state <= WR_FREE;
                    end
                end
                endcase
            end
        end
    end

endmodule