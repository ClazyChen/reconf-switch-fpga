`timescale 1ns / 1ps
`include "def.v"

`define CK_FREE     2'b00
`define CK_CALCIN   2'b01
`define CK_CALADDR  2'b10
`define CK_DONE     2'b11

module cksum(
        input                                clk,
        input                                rst,
        input                                ck_setup_i,
        input   wire    [`DATA_WIDTH-1:0]   cksum_i,
        output  reg     [`ADDR_WIDTH-1:0]   addr_o
    );
    
    reg     [`ADDR_WIDTH-1:0]   addr;
    reg     [1:0]               state;
    reg     [1:0]               cin;
    
    always @(posedge clk) begin
        if(~rst) begin
            addr <= {`ADDR_WIDTH{1'b0}};
            state <= 2'b00;
            cin <= 2'b00;
        end
        else begin
            case(state)
                `CK_FREE: begin
                    if(ck_setup_i == 1'b1) begin
                        {cin, addr} <= cksum_i[9:0] + cksum_i[19:10] + cksum_i[29:20] + cksum_i[31:30];
                        state <= `CK_CALADDR;
                    end
                end
                `CK_CALADDR: begin
                    addr_o <= cin + addr;
                    state <= `CK_DONE;
                end
                `CK_DONE: begin
                    if(ck_setup_i == 1'b0) begin
                        state <= `CK_FREE;
                    end
                end
            endcase
        end
    end
    
endmodule
