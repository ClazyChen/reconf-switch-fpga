`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/06 16:19:38
// Design Name: 
// Module Name: bram_rw_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bram_rw_tb();

    parameter   NUM_COL = 4;
    parameter   COL_WIDTH = 2;
    parameter   ADDR_WIDTH = 4;
    parameter   DATA_WIDTH = NUM_COL * COL_WIDTH;

    reg         clk;
    reg         enaA;
    reg         enaB;
    reg [NUM_COL-1:0]       weA;
    reg [NUM_COL-1:0]       weB;
    reg [ADDR_WIDTH-1:0]    addrA;
    reg [ADDR_WIDTH-1:0]    addrB;
    reg [DATA_WIDTH-1:0]    dinA;
    reg [DATA_WIDTH-1:0]    dinB;
    
    wire    [DATA_WIDTH-1:0]    doutA;
    wire    [DATA_WIDTH-1:0]    doutB;
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        enaA <= 1'b0;
        enaB <= 1'b0;
        
        #10
        enaA <= 1'b1;
        weA <= 4'b1111;
        addrA <= 4'b0001;
        dinA <= 8'b0101_1010;
        
        #20
        addrA <= 4'b0011;
        dinA <= 8'b1111_0000;
        
        #20
        weA <= 4'b0000;
        addrA <= 4'b0001;
        
        #20
        enaA <= 1'b0;
        
    end


    bram_write_enable_dual_port
    #(
        .NUM_COL(NUM_COL),
        .COL_WIDTH(COL_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) sram0 (
        .clkA(clk),
        .enaA(enaA),
        .weA(weA),
        .addrA(addrA),
        .dinA(dinA),
        .doutA(doutA),
        .clkB(clkB),
        .enaB(enaB),
        .weB(weB),
        .addrB(addrB),
        .dinB(dinB),
        .doutB(doutB)
    );

endmodule
