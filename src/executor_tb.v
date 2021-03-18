`timescale 1ns/1ps

`include "def.vh"

module executor_tb (
);

    reg clk;
    reg rst;
    reg start_i;
    wire [`ADDR_BUS] start_addr_i;
    wire [`ADDR_BUS] args_start_i;
    wire exec_done_o;

    wire mem_ce_o;
    wire mem_we_o;
    wire [`ADDR_BUS] mem_addr_o;
    wire [3:0] mem_width_o;
    wire [`DATA_BUS] mem_data_o;
    wire [`DATA_BUS] mem_data_i;

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
    assign args_start_i = 128;

    executor executor0(
        .clk(clk),
        .rst(rst),
        .start_i(start_i),
        .start_addr_i(start_addr_i),
        // mem
        .mem_ce_o(mem_ce_o),
        .mem_we_o(mem_we_o),
        .mem_addr_o(mem_addr_o),
        .mem_width_o(mem_width_o),
        .mem_data_o(mem_data_o),
        .mem_data_i(mem_data_i),
        // arg
        .args_start_i(args_start_i),
        // result
        .exec_done_o(exec_done_o)
    );

    wire sram_ce;
    wire sram_we;
    wire [`ADDR_BUS] sram_addr_o;
    wire [3:0] sram_sel_o;
    wire [`DATA_BUS] sram_data_o;
    wire [`DATA_BUS] sram_data_i;

    mem mem0(
        .ce(mem_ce_o),
        .we(mem_we_o),
        .addr_i(mem_addr_o),
        .width_i(mem_width_o),
        .data_i(mem_data_o),
        .data_o(mem_data_i),

        .sram_ce(sram_ce),
        .sram_we(sram_we),
        .sram_addr_o(sram_addr_o),
        .sram_sel_o(sram_sel_o),
        .sram_data_o(sram_data_o),
        .sram_data_i(sram_data_i)
    );

    sram sram0(
        .clk(clk),
        .ce(sram_ce),
        .we(sram_we),
        .addr_i(sram_addr_o),
        .sel_i(sram_sel_o),
        .data_i(sram_data_o),
        .data_o(sram_data_i)
    );

    initial begin
        $display("Loading packet");
        $readmemh("D:\\year4\\final_paper\\ReconfSwitch\\src\\packet.data", sram0.data_mem);
    end

endmodule