`timescale 1ns / 1ps

`include "def.v"

//`define OP_INSERT   2'b00
//`define OP_DELETE   2'b01
//`define OP_MODIFY   2'b10
//`define OP_SEARCH   2'b11

module sram(
        input   wire                            clk,
        input   wire                            rst,
        input   wire                            ce,
        input   wire                            oe,
        input   wire                            we,             
        input   wire    [`ADDR_WIDTH-1 : 0]     addr_i,
        input   wire    [`DATA_WIDTH-1 : 0]     data_i,
        output  reg     [`DATA_WIDTH-1 : 0]     data_o
    );
    
    reg [`DATA_WIDTH-1:0]  data_mem[2**`ADDR_WIDTH-1:0];
    
    integer i;
    always @(posedge clk) begin
        if(~rst) begin
            data_o <= {`DATA_WIDTH{1'b0}};
            for(i = 0; i < 1024; i=i+1) begin
                data_mem[i] <= {`DATA_WIDTH{1'b0}};
            end
        end
        else begin
            if(ce & we) begin
                data_mem[addr_i] <= data_i;
            end
            else if(ce & ~we & oe) begin
                data_o <= data_mem[addr_i];
            end
            else begin
                // ce = 0, not choose
            end
        end
    end
    
endmodule
