`timescale 1ns/1ps

`include "def.v"

module cksum_tb (
);

    reg clk;
    reg rst;
    reg start;
    reg [`ADDR_WIDTH - 1:0] field_start_addr;
    reg [`DATA_WIDTH - 1:0] field_len;
    wire [`DATA_WIDTH - 1:0] field_data;
    wire [`ADDR_WIDTH - 1:0] field_addr;
    wire cksum_ready;
    wire [15:0] cksum_val;

    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end
    end

    initial begin
        rst = `TRUE;
        start <= `FALSE;
        field_start_addr <= 14;
        field_len <= 20;
        #45 rst = `FALSE;
        #20 start <= `TRUE;
    end

    cksum cksum0(
        .clk(clk),
        .rst(rst),
        .start_i(start),
        .field_start_addr_i(field_start_addr),
        .field_len_i(field_len),
        .field_data_i(field_data),
        .field_addr_o(field_addr),
        .cksum_ready_o(cksum_ready),
        .cksum_val_o(cksum_val)
    );

    pkt_ram pkt_ram0(
        .clk(clk),
        .rst(rst),
        .addr_i(field_addr),
        .data_o(field_data)
    );

endmodule