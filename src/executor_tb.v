`timescale 1ns/1ps

`include "def.v"

module executor_tb (
);

    reg clk;
    reg rst;
    reg start_i;
    wire [`ADDR_BUS] start_addr_i;
    wire exec_done_o;

    wire sram_ce_o;
    wire sram_we_o;
    wire [`ADDR_BUS] sram_addr_o;
    wire [3:0] sram_sel_o;
    wire [`DATA_BUS] sram_data_o;
    wire [`DATA_BUS] sram_data_i;

    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end
    end

    initial begin
        rst = `TRUE;
        start_i <= `FALSE;
        #45 rst = `FALSE;
        #20 start_i <= `TRUE;
    end

    assign start_addr_i = 64;

    executor executor0(
        .clk(clk),
        .rst(rst),
        .start_i(start_i),
        .start_addr_i(start_addr_i),
        // sram
        .sram_ce_o(sram_ce_o),
        .sram_we_o(sram_we_o),
        .sram_addr_o(sram_addr_o),
        .sram_sel_o(sram_sel_o),
        .sram_data_o(sram_data_o),
        .sram_data_i(sram_data_i),
        // result
        .exec_done_o(exec_done_o)
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

    initial begin
        $display("Loading packet");
        $readmemh("D:\\year4\\final_paper\\ReconfSwitch\\src\\packet.data", sram0.data_mem);
        // reset checksum
        sram0.data_mem[6][31:16] = `ZERO_HALF;
    end

endmodule