`timescale 1ns / 1ps

module hash_table_tb();
    
    reg         clk;
    reg         rst;
    reg     [21:0] tb_key;
    reg             hash_setup;
    reg     [9:0] tb_value;
    reg     [1:0]       op_type;
    wire    [21:0] tb_value_w;
    wire    [2:0]   tb_search_res;
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        rst <= 0;
        #10
        rst <= 1;
        hash_setup <= 1'b1;
        op_type <= 2'b00;
        tb_key <= 22'b00_0000000010_0000000001;
        tb_value <= 10'b10000_00001;
        #30
        hash_setup <= 1'b0;
        #10
        hash_setup <= 1'b1;
        op_type <= 2'b00;
        tb_key <= 22'b00_0000000100_0000000001;
        tb_value <= 10'b10010_01001;
        #30
        hash_setup <= 1'b0;
        #10
        hash_setup <= 1'b1;
        op_type <= `HASH_DELETE;
        tb_key <= 22'b00_0000000010_0000000001;    
        #40
        hash_setup <= 1'b0;
        #15
        hash_setup <= 1'b1;
        op_type <= `HASH_DELETE;
        tb_key <= 22'b00_0000000100_0000000001;
        #40
        hash_setup <= 1'b0;
        #20
        hash_setup <= 1'b1;
        op_type <= `HASH_INSERT;
        tb_key <= 22'b00_0000000100_0000000001;
        tb_value <= 10'b10010_01001;
        #30
        hash_setup <= 1'b0;
        
        
//        rst <= 1;
//        hash_setup <= 1'b1;
//        op_type <= 2'b00;
//        tb_key <= 22'b00_0000000010_0000000001;
//        tb_value <= 10'b10000_00001;
//        #30
//        hash_setup <= 1'b0;
//        #10
//        hash_setup <= 1'b1;
//        op_type <= 2'b00;
//        tb_key <= 22'b00_0000000100_0000000001;
//        tb_value <= 10'b10010_01001;
//        #30
//        hash_setup <= 1'b0;
//        #10
//        hash_setup <= 1'b1;
//        op_type <= 2'b00;
//        tb_key <= 22'b00_0000000110_0000000001;
//        tb_value <= 10'b10010_01001;
//        #30
//        hash_setup <= 1'b0;
//         #10
//        hash_setup <= 1'b1;
//        op_type <= 2'b00;
//        tb_key <= 22'b00_0000000000_0000000001;
//        tb_value <= 10'b10010_01001;
//        #30
//        hash_setup <= 1'b0;
    end
    
    assign tb_value_w = tb_value;
    
    hash_table h0(
        .clk(clk),
        .rst(rst),
        .hash_setup_i(hash_setup),
        .key(tb_key),
        .op_type(op_type),
        .value(tb_value_w),
        .search_res(tb_search_res)
    );

endmodule
