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

    input wire [`ADDR_WIDTH - 1:0] field_start_addr_i,
    input wire [`DATA_WIDTH - 1:0] field_len_i,

    input wire [`DATA_WIDTH - 1:0] field_data_i,
    output reg [`ADDR_WIDTH - 1:0] field_addr_o,

    output reg cksum_ready_o,
    output reg [15:0] cksum_val_o
);

    reg [`DATA_WIDTH - 1:0] field_addr;
    reg [`DATA_WIDTH - 1:0] field_end_addr;
    reg [`DATA_WIDTH - 1:0] cksum_val;
    reg [3:0] data_sel;
    reg [2:0] state;

    always @(posedge clk) begin
        if (rst == `RST_ENABLED) begin
            field_addr <= `ZERO_WORD;
            field_end_addr <= `ZERO_WORD;
            cksum_ready_o <= `FALSE;
            cksum_val <= `ZERO_WORD;
            data_sel <= 4'h0;
            state <= `STATE_FREE;
        end else begin
            case (state)
                `STATE_FREE: begin
                    if (start_i == `TRUE) begin
                        field_addr <= field_start_addr_i;
                        field_end_addr <= field_start_addr_i + field_len_i;
                        cksum_ready_o <= `FALSE;
                        cksum_val <= `ZERO_WORD;
                        data_sel <= 4'h0;
                        state <= `STATE_LOAD;
                    end
                end
                `STATE_LOAD: begin
                    if (field_addr[1:0] == 2'h2) begin
                        // align by 4 bytes
                        field_addr <= field_addr + 2;
                        data_sel <= 4'b0011;
                    end else begin
                        field_addr <= field_addr + 4;
                        data_sel <= 4'b1111;
                    end
                    state <= `STATE_SUM;
                end
                `STATE_SUM: begin
                    // field_data is at previous clock's addr
                    if (data_sel == 4'b1100) begin
                        cksum_val <= cksum_val + field_data_i[31:16];
                    end else if (data_sel == 4'b0011) begin
                        cksum_val <= cksum_val + field_data_i[15:0];
                    end else begin
                        cksum_val <= cksum_val + field_data_i[31:16] + field_data_i[15:0];
                    end

                    if (field_addr < field_end_addr) begin
                        if (field_addr + 2 == field_end_addr) begin
                            data_sel <= 4'b1100;
                        end else begin
                            data_sel <= 4'b1111;
                        end
                        field_addr <= field_addr + 4;
                    end else begin
                        state <= `STATE_COMPLEMENT1;
                    end
                end
                `STATE_COMPLEMENT1: begin
                    cksum_val <= cksum_val[31:16] + cksum_val[15:0];
                    state <= `STATE_COMPLEMENT2;
                end
                `STATE_COMPLEMENT2: begin
                    cksum_val <= ~(cksum_val[31:16] + cksum_val[15:0]);
                    state <= `STATE_DONE;
                end
                `STATE_DONE: begin
                    cksum_ready_o <= `TRUE;
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
        field_addr_o <= field_addr;
        cksum_val_o <= cksum_val[15:0];
    end

endmodule
