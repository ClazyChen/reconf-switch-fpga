`timescale 1ns / 1ps

module cksum_tb();

    reg     clk;
    reg     rst;
    reg  [`DATA_WIDTH-1:0]   tb_data;
    wire [`ADDR_WIDTH-1:0]   tb_addr;
    reg     ck_setup;

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst <= 0;
        tb_data <= 32'b00_0000000100_0000000010_0000000001;
        #10
        rst <= 1;
        ck_setup <= 1'b1;
        #15
        ck_setup <= 1'b0;
        #10
        ck_setup <= 1'b1;
        tb_data <= 32'b01_1000000000_0100000000_0010000000;
        #15
        ck_setup <= 1'b0;
        #15
        ck_setup <= 1'b1;
        tb_data <= 32'b10_0100000000_0100000000_0010100000;
        #15
        ck_setup <= 1'b0;
        #15
        ck_setup <= 1'b1;
        tb_data <= 32'b10_0100100010_0100000000_0010100000;
        #15
        ck_setup <= 1'b0;
    end

    cksum c0(
        .clk(clk),
        .rst(rst),
        .ck_setup_i(ck_setup),
        .cksum_i(tb_data),
        .addr_o(tb_addr)
    );

endmodule
