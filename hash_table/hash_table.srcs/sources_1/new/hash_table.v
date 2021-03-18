`timescale 1ns / 1ps

`include "sram.v"
`include "cksum.v"

`define I_FREE          2'b00
`define I_LOADDATA      2'b01
`define I_WRITE         2'b10
`define I_DONE          2'b11

`define D_FREE          3'b000

`define D_DONE          3'b111

module hash_table(
        input                   clk,
        input                   rst,
        input                   hash_setup_i,
        input   wire    [`KEY_LENGTH-1:0]   key,
        input   wire    [1:0]   op_type,
        inout   wire    [`VALUE_LENGTH-1:0]   value,
        output  wire    [2:0]   search_res
    );
    
    reg     [`ADDR_WIDTH-1:0]    h_addr_i;
    wire    [`ADDR_WIDTH-1:0]    h_addr_o;
    reg                         ce;
    reg                         oe;
    reg                         we;
    reg     [`DATA_WIDTH-1:0]   data_in;
    wire    [`DATA_WIDTH-1:0]   data_out;
    
    reg                 ck_setup;
    
    reg     [1:0]       i_state;
    reg     [1:0]       s_state;
    reg     [1:0]       m_state;
    reg     [2:0]       d_state;
    
    always @(posedge clk) begin
        if(~rst) begin
            ce <= 0;
            we <= 0;
            oe <= 0;
            data_in <= {`DATA_WIDTH{1'b0}};
            
            i_state <= 2'b00;
            s_state <= 2'b00;
            m_state <= 2'b00;
            d_state <= 2'b00;
        end
        else begin
            case(op_type) 
                `HASH_INSERT: begin
                    case(i_state)
                        `I_FREE: begin
                            if(hash_setup_i == 1'b1) begin
                                ck_setup <= 1'b1;
                                ce <= 1'b1;
                                i_state <= `I_LOADDATA;
                            end
                        end
                        `I_LOADDATA: begin
                            i_state <= `I_WRITE;
                            data_in <= {key, value};
                        end
                        `I_WRITE: begin
                            we <= 1'b1;
                            i_state <= `I_DONE;
                            ck_setup <= 1'b0;
                        end
                        `I_DONE: begin
                            we <= 1'b0;
                            if(hash_setup_i == 1'b0) begin
                                i_state <= `I_FREE;
                            end
                        end
                    endcase
                end
                `HASH_DELETE: begin
                    case(d_state)
                        `D_FREE: begin
                            if(hash_setup_i == 1'b1) begin
                                ck_setup <= 1'b1;
                                ce <= 1'b1;
                                d_state <= 3'b001;
                            end
                        end
                        3'b001: begin
                            d_state <= 3'b010;
                        end
                        3'b010: begin
                            d_state <= 3'b011;
                            ck_setup <= 1'b0;
                            oe <= 1'b1;
                        end
                        3'b011: begin
                            d_state <= 3'b100;
                        end
                        3'b100: begin
                            if(data_out[31:10] == key) begin
                                we <= 1'b1;
                                oe <= 1'b0;
                                data_in <= 32'd0;
                                d_state <= 3'b101;
                            end
                            else begin
                                d_state <= 3'b101;
                            end
                        end
                        3'b101: begin
                            we <= 1'b0;
                            if(hash_setup_i == 1'b0) begin
                                d_state <= `D_FREE;
                            end
                        end
                    endcase
                end
                `HASH_SEARCH: begin
                
                end
                `HASH_MODIFY: begin
                
                end
                default:;
            endcase
        end
    end
    
    always @(h_addr_o) begin
        h_addr_i = h_addr_o;
    end
    
    cksum c0(
        .clk(clk),
        .rst(rst),
        .ck_setup_i(ck_setup),
        .cksum_i({{10{1'b0}}, key}),
        .addr_o(h_addr_o)
    );
    
    sram s0(
        .clk(clk),
        .rst(rst),
        .ce(ce),
        .oe(oe),
        .we(we),
        .addr_i(h_addr_i),
        .data_i(data_in),
        .data_o(data_out)
    );
    
endmodule
