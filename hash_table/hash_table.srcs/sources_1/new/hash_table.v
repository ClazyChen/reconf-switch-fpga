`timescale 1ns / 1ps

`include "sram.v"
`include "cksum.v"

`define I_FREE          2'b00
`define I_LOADDATA      2'b01
`define I_WRITE         2'b10
`define I_DONE          2'b11

`define D_FREE          3'b000
`define D_TRANS1        3'b001
`define D_READ          3'b010
`define D_TRANS2        3'b011
`define D_DELELE        3'b100
`define D_DONE          3'b101 

`define S_FREE          3'b000
`define S_TRANS1        3'b001
`define S_READ          3'b010
`define S_TRANS2        3'b011
`define S_DONE          3'b100

`define M_FREE          3'b000
`define M_TRANS1        3'b001
`define M_READ          3'b010
`define M_TRANS2        3'b011
`define M_DELELE        3'b100
`define M_DONE          3'b101 

module hash_table(
        input                   clk,
        input                   rst,
        input                   hash_setup_i,
        input   wire    [`KEY_LENGTH-1:0]   key,
        input   wire    [1:0]   op_type,
        input   wire    [`VALUE_LENGTH-1:0]   value_i,
        output   reg    [`VALUE_LENGTH-1:0]   value_o,
        output  reg    [2:0]   search_res
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
    reg     [2:0]       s_state;
    reg     [2:0]       m_state;
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
                            data_in <= {key, value_i};
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
                                d_state <= `D_TRANS1;
                            end
                        end
                        `D_TRANS1: begin
                            d_state <= `D_READ;
                        end
                        `D_READ: begin
                            d_state <= `D_TRANS2;
                            ck_setup <= 1'b0;
                            oe <= 1'b1;
                        end
                        `D_TRANS2: begin
                            d_state <= `D_DELELE;
                        end
                        `D_DELELE: begin
                            if(data_out[31:10] == key) begin
                                we <= 1'b1;
                                oe <= 1'b0;
                                data_in <= 32'd0;
                                d_state <= `D_DONE;
                            end
                            else begin
                                d_state <= `D_DONE;
                            end
                        end
                        `D_DONE: begin
                            we <= 1'b0;
                            if(hash_setup_i == 1'b0) begin
                                d_state <= `D_FREE;
                            end
                        end
                    endcase
                end
                `HASH_SEARCH: begin
                    case(s_state)
                        `S_FREE: begin
                            if(hash_setup_i == 1'b1) begin
                                ck_setup <= 1'b1;
                                ce <= 1'b1;
                                s_state <= `S_TRANS1;
                            end
                        end
                        `S_TRANS1: begin
                            s_state <= `S_READ;
                        end
                        `S_READ: begin
                            oe <= 1'b1;
                            ck_setup <= 1'b0;
                            s_state <= `S_TRANS2;
                        end
                        `S_TRANS2: begin
                            oe <= 1'b0;
                            s_state <= `S_DONE;
                        end
                        `S_DONE: begin
                            if(hash_setup_i == 1'b0) begin
                                if(data_out[31:10] == key) begin
                                    value_o <= data_out[9:0];
                                    search_res <= 2'b00;
                                end
                                else begin
                                    search_res <= 2'b01;
                                end
                                s_state <= 3'b000;
                            end
                        end
                    endcase
                end
                `HASH_MODIFY: begin
                    case(d_state)
                        `M_FREE: begin
                            if(hash_setup_i == 1'b1) begin
                                ck_setup <= 1'b1;
                                ce <= 1'b1;
                                d_state <= `M_TRANS1;
                            end
                        end
                        `M_TRANS1: begin
                            d_state <= `M_READ;
                        end
                        `M_READ: begin
                            d_state <= `M_TRANS2;
                            ck_setup <= 1'b0;
                            oe <= 1'b1;
                        end
                        `M_TRANS2: begin
                            d_state <= `M_DELELE;
                        end
                        `M_DELELE: begin
                            if(data_out[31:10] == key) begin
                                we <= 1'b1;
                                oe <= 1'b0;
                                data_in <= 32'd0;
                                d_state <= `M_DONE;
                            end
                            else begin
                                d_state <= `M_DONE;
                            end
                        end
                        `M_DONE: begin
                            we <= 1'b0;
                            if(hash_setup_i == 1'b0) begin
                                d_state <= `M_FREE;
                            end
                        end
                    endcase
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
