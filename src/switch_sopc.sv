`include "def.svh"

module switch_sopc (
    input wire clk,
    input wire rst
);

    // switch perspective
    wire sram_ce_o;
    wire sram_we_o;
    wire [`ADDR_BUS] sram_addr_o;
    wire [3:0] sram_sel_o;
    wire [`DATA_BUS] sram_data_o;
    wire [`DATA_BUS] sram_data_i;

    switch switch0(
        .clk(clk),
        .rst(rst),
        .sram_ce_o(sram_ce_o),
        .sram_we_o(sram_we_o),
        .sram_addr_o(sram_addr_o),
        .sram_sel_o(sram_sel_o),
        .sram_data_o(sram_data_o),
        .sram_data_i(sram_data_i)
    );

    sram sram0(
        .clk(clk),
        .ce(sram_ce_o),
        .we(sram_we_o),
        .addr_i(sram_addr_o),
        .sel_i(sram_sel_o),
        .data_i(sram_data_o),
        .data_o(sram_data_i)
    );

endmodule