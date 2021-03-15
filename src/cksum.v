`include "def.v"

`define STATE_FREE  3'h0
`define STATE_LOAD  3'h1
`define STATE_SUM   3'h2
`define STATE_COMPLEMENT1   3'h3
`define STATE_COMPLEMENT2   3'h4
`define STATE_DONE  3'h5

module cksum (
    input wire clk,
    input wire rst,

    input wire start_i,

    input wire [`ADDR_BUS] field_start_addr_i,
    input wire [`DATA_BUS] field_len_i,

    // sram
    output reg sram_ce_o,
    output reg sram_we_o,
    output reg [`ADDR_BUS] sram_addr_o,
    output reg [3:0] sram_sel_o,
    output reg [`DATA_BUS] sram_data_o,
    input wire [`DATA_BUS] sram_data_i,

    output reg cksum_ready_o,
    output reg [15:0] cksum_val_o
);

    reg [`DATA_BUS] sram_addr;
    reg [`DATA_BUS] cksum_val;

    reg [`DATA_BUS] field_end_addr;
    reg [3:0] data_sel;
    reg [2:0] state;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // sram
            sram_ce_o <= `FALSE;
            sram_we_o <= `FALSE;
            sram_addr <= `ZERO_WORD;
            sram_sel_o <= 4'b0000;
            sram_data_o <= `ZERO_WORD;
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
                    // sram
                    sram_ce_o <= `TRUE;
                    sram_we_o <= `FALSE;
                    sram_addr <= field_start_addr_i;
                    sram_sel_o <= 4'b1111;
                    sram_data_o <= `ZERO_WORD;
                    // checksum
                    cksum_ready_o <= `FALSE;
                    cksum_val <= `ZERO_WORD;
                    // state
                    field_end_addr <= field_start_addr_i + field_len_i;
                    data_sel <= 4'b0000;
                    state <= `STATE_LOAD;
                end
            end
            `STATE_LOAD: begin
                if (sram_addr[1:0] == 2'h2) begin
                    // align by 4 bytes
                    sram_addr <= sram_addr + 2;
                    data_sel <= 4'b0011;
                end else begin
                    sram_addr <= sram_addr + 4;
                    data_sel <= 4'b1111;
                end
                state <= `STATE_SUM;
            end
            `STATE_SUM: begin
                // sram_data is at previous clock's addr
                if (data_sel == 4'b1100) begin
                    cksum_val <= cksum_val + sram_data_i[31:16];
                end else if (data_sel == 4'b0011) begin
                    cksum_val <= cksum_val + sram_data_i[15:0];
                end else begin
                    cksum_val <= cksum_val + sram_data_i[31:16] + sram_data_i[15:0];
                end

                if (sram_addr < field_end_addr) begin
                    if (sram_addr + 2 == field_end_addr) begin
                        data_sel <= 4'b1100;
                    end else begin
                        data_sel <= 4'b1111;
                    end
                    sram_addr <= sram_addr + 4;
                end else begin
                    sram_ce_o <= `FALSE;
                    state <= `STATE_COMPLEMENT1;
                end
            end
            `STATE_COMPLEMENT1: begin
                cksum_val <= cksum_val[31:16] + cksum_val[15:0];
                state <= `STATE_COMPLEMENT2;
            end
            `STATE_COMPLEMENT2: begin
                cksum_val <= ~(cksum_val[31:16] + cksum_val[15:0]);
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
        sram_addr_o <= sram_addr;
        cksum_val_o <= cksum_val[15:0];
    end

endmodule
