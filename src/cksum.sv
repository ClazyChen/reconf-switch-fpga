`include "def.svh"

module cksum (
    input wire clk,
    input wire rst,
    // input
    input wire start_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    input wire [`ADDR_BUS] field_start_i,
    input wire [`DATA_BUS] field_len_i,
    output reg [`HALF_BUS] cksum_val_o,
    // output
    output reg cksum_ready_o
);

    reg [`DATA_BUS] cksum_val;
    reg [`DATA_BUS] field_addr;
    reg [`DATA_BUS] field_end_addr;

    enum {
        STATE_FREE, STATE_SUM, STATE_COMPLEMENT
    } state;

    assign cksum_val_o = cksum_val[`HALF_BUS];

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // checksum
            cksum_ready_o <= `FALSE;
            cksum_val <= `ZERO_WORD;
            // state
            field_addr <= `ZERO_ADDR;
            field_end_addr <= `ZERO_ADDR;
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (start_i == `TRUE) begin
                    // checksum
                    cksum_ready_o <= `FALSE;
                    cksum_val <= `ZERO_WORD;
                    // state
                    field_addr <= field_start_i;
                    field_end_addr <= field_start_i + field_len_i;
                    state <= STATE_SUM;
                end
            end
            STATE_SUM: begin
                if (field_addr < field_end_addr) begin
                    cksum_val += {pkt_hdr_i[field_addr],
                                  pkt_hdr_i[field_addr + 1]};
                    field_addr <= field_addr + 2;
                end else begin
                    cksum_val <= cksum_val[31:16] + cksum_val[15:0];
                    state <= STATE_COMPLEMENT;
                end
            end
            STATE_COMPLEMENT: begin
                cksum_val <= ~(cksum_val[31:16] + cksum_val[15:0]);
                cksum_ready_o <= `TRUE;
                state <= STATE_FREE;
            end
            default: begin
                state <= STATE_FREE;
            end
            endcase
        end
    end

endmodule
