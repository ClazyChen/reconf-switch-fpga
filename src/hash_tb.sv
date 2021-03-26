`timescale 1ns/1ps

`include "def.svh"

module hash_tb (
);

    reg clk;
    reg rst;
    reg start_i;
    wire [`QUAD_BUS] key_i;
    wire hash_ready_o;
    wire [`DATA_BUS] hash_val_o;

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

    assign key_i = 64'hdead_beef_abcd_ef00;

    hash hash0(
        .clk(clk),
        .rst(rst),
        .start_i(start_i),
        .key_i(key_i),
        .hash_ready_o(hash_ready_o),
        .hash_val_o(hash_val_o)
    );

endmodule