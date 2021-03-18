`timescale 1ns/1ps

`include "def.vh"

module mem_tb (
);

    reg clk;
    reg rst;

    reg sram_ce_o;
    reg sram_we_o;
    reg [`ADDR_BUS] sram_addr_o;
    reg [3:0] sram_width_o;
    reg [`DATA_BUS] sram_data_o;
    wire [`DATA_BUS] sram_data_i;

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
        sram_ce_o <= `FALSE;
        sram_we_o <= `FALSE;
        sram_addr_o <= `ZERO_ADDR;
        sram_width_o <= 0;
        sram_data_o <= `ZERO_WORD;
        #65 // load word at 0x04
        sram_ce_o <= `TRUE;
        sram_we_o <= `FALSE;
        sram_addr_o <= 4;
        sram_width_o <= 4;
        #40 // load half at 0x04
        sram_addr_o <= 4;
        sram_width_o <= 2;
        #40 // load half at 0x06
        sram_addr_o <= 6;
        sram_width_o <= 2;
        #40 // load byte at 0x04
        sram_addr_o <= 4;
        sram_width_o <= 1;
        #40 // load byte at 0x05
        sram_addr_o <= 5;
        sram_width_o <= 1;
        #40 // load byte at 0x06
        sram_addr_o <= 6;
        sram_width_o <= 1;
        #40 // load byte at 0x07
        sram_addr_o <= 7;
        sram_width_o <= 1;
        #40 // store word at 0x08
        sram_we_o <= `TRUE;
        sram_addr_o <= 8;
        sram_width_o <= 4;
        sram_data_o <= 32'hdeadbeef;
        #40 // store half at 0x12
        sram_addr_o <= 12;
        sram_width_o <= 2;
        sram_data_o <= 16'hdead;
        #40 // store half at 0x14
        sram_addr_o <= 14;
        sram_width_o <= 2;
        sram_data_o <= 16'hbeef;
        #40 // store byte at 0x16
        sram_addr_o <= 16;
        sram_width_o <= 1;
        sram_data_o <= 8'hde;
        #40 // store byte at 0x17
        sram_addr_o <= 17;
        sram_width_o <= 1;
        sram_data_o <= 8'had;
        #40 // store byte at 0x18
        sram_addr_o <= 18;
        sram_width_o <= 1;
        sram_data_o <= 8'hbe;
        #40 // store byte at 0x19
        sram_addr_o <= 19;
        sram_width_o <= 1;
        sram_data_o <= 8'hef;
    end

    wire mem_ce;
    wire mem_we;
    wire [`ADDR_BUS] mem_addr_o;
    wire [3:0] mem_sel_o;
    wire [`DATA_BUS] mem_data_o;
    wire [`DATA_BUS] mem_data_i;

    mem mem0(
        .ce(sram_ce_o),
        .we(sram_we_o),
        .addr_i(sram_addr_o),
        .width_i(sram_width_o),
        .data_i(sram_data_o),
        .data_o(sram_data_i),

        .mem_ce(mem_ce),
        .mem_we(mem_we),
        .mem_addr_o(mem_addr_o),
        .mem_sel_o(mem_sel_o),
        .mem_data_o(mem_data_o),
        .mem_data_i(mem_data_i)
    );

    sram sram0(
        .clk(clk),
        .ce(mem_ce),
        .we(mem_we),
        .addr_i(mem_addr_o),
        .sel_i(mem_sel_o),
        .data_i(mem_data_o),
        .data_o(mem_data_i)
    );

    initial begin
        $display("Loading packet");
        $readmemh("D:\\year4\\final_paper\\ReconfSwitch\\src\\packet.data", sram0.data_mem);
    end

endmodule