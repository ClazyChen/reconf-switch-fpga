`include "def.v"

`define STATE_FREE          3'h0
`define STATE_CLEAR         3'h1
`define STATE_LOAD          3'h2
`define STATE_SUM           3'h3
`define STATE_COMPLEMENT1   3'h4
`define STATE_COMPLEMENT2   3'h5
`define STATE_STORE         3'h6
`define STATE_DONE          3'h7

module cksum (
    input wire clk,
    input wire rst,

    input wire start_i,

    input wire [`ADDR_BUS] field_start_i,
    input wire [`DATA_BUS] field_len_i,
    input wire [`ADDR_BUS] dst_field_start_i,

    // mem
    output reg mem_ce_o,
    output reg mem_we_o,
    output reg [`ADDR_BUS] mem_addr_o,
    output reg [3:0] mem_width_o,
    output reg [`DATA_BUS] mem_data_o,
    input wire [`DATA_BUS] mem_data_i,

    output reg cksum_ready_o
);

    reg [`DATA_BUS] mem_addr;
    reg [`DATA_BUS] cksum_val;

    reg [`DATA_BUS] field_end_addr;
    reg [3:0] data_sel;
    reg [2:0] state;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // sram
            mem_ce_o <= `FALSE;
            mem_we_o <= `FALSE;
            mem_addr <= `ZERO_WORD;
            mem_width_o <= 0;
            mem_data_o <= `ZERO_WORD;
            // checksum
            cksum_ready_o <= `FALSE;
            cksum_val <= `ZERO_WORD;
            // state
            field_end_addr <= `ZERO_WORD;
            data_sel <= 4'h0;
            state <= `STATE_FREE;
        end else begin
            case (state)
            `STATE_FREE: begin
                if (start_i == `TRUE) begin
                    // sram: clear dst field
                    mem_ce_o <= `TRUE;
                    mem_we_o <= `TRUE;
                    mem_addr <= dst_field_start_i;
                    mem_width_o <= 2;
                    mem_data_o <= `ZERO_WORD;
                    // checksum
                    cksum_ready_o <= `FALSE;
                    cksum_val <= `ZERO_WORD;
                    // state
                    field_end_addr <= field_start_i + field_len_i;
                    data_sel <= 4'b0000;
                    state <= `STATE_CLEAR;
                end
            end
            `STATE_CLEAR: begin
                // sram: load cksum field data
                mem_ce_o <= `TRUE;
                mem_we_o <= `FALSE;
                mem_addr <= field_start_i;
                mem_width_o <= 4;
                mem_data_o <= `ZERO_WORD;
                // state
                state <= `STATE_LOAD;
            end
            `STATE_LOAD: begin
                if (mem_addr[1:0] == 2'h2) begin
                    // align by 4 bytes
                    mem_addr <= mem_addr + 2;
                    data_sel <= 4'b0011;
                end else begin
                    mem_addr <= mem_addr + 4;
                    data_sel <= 4'b1111;
                end
                state <= `STATE_SUM;
            end
            `STATE_SUM: begin
                // mem_data is at previous clock's addr
                if (data_sel == 4'b1100) begin
                    cksum_val <= cksum_val + mem_data_i[31:16];
                end else if (data_sel == 4'b0011) begin
                    cksum_val <= cksum_val + mem_data_i[15:0];
                end else begin
                    cksum_val <= cksum_val + mem_data_i[31:16] + mem_data_i[15:0];
                end

                if (mem_addr < field_end_addr) begin
                    if (mem_addr + 2 == field_end_addr) begin
                        data_sel <= 4'b1100;
                    end else begin
                        data_sel <= 4'b1111;
                    end
                    mem_addr <= mem_addr + 4;
                end else begin
                    mem_ce_o <= `FALSE;
                    state <= `STATE_COMPLEMENT1;
                end
            end
            `STATE_COMPLEMENT1: begin
                cksum_val <= cksum_val[31:16] + cksum_val[15:0];
                state <= `STATE_COMPLEMENT2;
            end
            `STATE_COMPLEMENT2: begin
                // store checksum result to dst field
                mem_ce_o <= `TRUE;
                mem_we_o <= `TRUE;
                mem_addr <= dst_field_start_i;
                mem_width_o <= 2;
                mem_data_o <= {`ZERO_HALF, ~(cksum_val[31:16] + cksum_val[15:0])};

                state <= `STATE_STORE;
            end
            `STATE_STORE: begin
                mem_ce_o <= `FALSE;
                mem_we_o <= `FALSE;
                mem_addr <= `ZERO_WORD;
                mem_width_o <= 0;
                mem_data_o <= `ZERO_WORD;

                cksum_ready_o <= `TRUE;
                state <= `STATE_DONE;
            end
            `STATE_DONE: begin
                if (start_i == `FALSE) begin
                    state <= `STATE_FREE;
                end
            end
            default: begin
                state <= `STATE_FREE;
            end
            endcase
        end
    end

    always @(*) begin
        mem_addr_o <= mem_addr;
    end

endmodule
