`include "def.vh"

module sram (
    input wire clk,
    input wire ce,  // chip enable
    input wire we,  // write enable
    input wire [`ADDR_BUS] addr_i,  // address
    input wire [3:0] sel_i,       // selector
    input wire [`DATA_BUS] data_i,  // data to write
    output reg [`DATA_BUS] data_o   // data to read
);

    reg [`DATA_BUS] data_mem[32:0];    // 256 x 32 bits

    always @(posedge clk) begin
        if (ce == `FALSE) begin
            data_o <= `ZERO_WORD;
        end else begin
            if (we == `TRUE) begin
                // write to sram
                if (sel_i[3] == `TRUE) begin
                    data_mem[addr_i[9:2]][31:24] <= data_i[31:24];
                end
                if (sel_i[2] == `TRUE) begin
                    data_mem[addr_i[9:2]][23:16] <= data_i[23:16];
                end
                if (sel_i[1] == `TRUE) begin
                    data_mem[addr_i[9:2]][15:8] <= data_i[15:8];
                end
                if (sel_i[0] == `TRUE) begin
                    data_mem[addr_i[9:2]][7:0] <= data_i[7:0];
                end
            end else begin
                // read from sram
                data_o <= data_mem[addr_i[9:2]];
            end
        end
    end

endmodule
