`timescale 1ns / 1ps

module sram_tb();
    
    reg     clk;
    reg     rst;
    reg     ce;
    reg     oe;
    reg     we;
    
    reg    [`ADDR_WIDTH-1:0]   tb_addr;
    reg    [`DATA_WIDTH-1:0]   tb_data_i;
    wire     [`DATA_WIDTH-1:0]   tb_data_o;
    
    initial begin
        clk = 1'b0;
        forever #10 clk = ~clk;
    end
    
    initial begin
        rst <= 0;
        ce <= 0;
        #20
        rst <= 1;
        ce <= 1;
        we <= 1;
        tb_addr <= 10'b0000000001;
        tb_data_i <= 32'd1;
        
        #20
        we <= 0;
        oe <= 1;
        tb_addr <= 10'b0000000001;
    end
    
    sram s0(
        .clk(clk),
        .rst(rst),
        .ce(ce),
        .oe(oe),
        .we(we),
        .addr_i(tb_addr),
        .data_i(tb_data_i),
        .data_o(tb_data_o)
    );
    
endmodule
