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
    reg [`DATA_BUS] field_end_addr;

    enum {
        STATE_FREE, STATE_SUM, STATE_COMPLEMENT, STATE_STORE, STATE_DONE
    } state;

    always @(*) begin
        if (rst == `TRUE) begin
            // checksum
            cksum_ready_o <= `FALSE;
            cksum_val <= `ZERO_WORD;
            // state
            field_end_addr <= `ZERO_ADDR;
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (start_i == `TRUE) begin
                    field_end_addr <= field_start_i + field_len_i;
                    state <= STATE_SUM;
                end
            end
            STATE_SUM: begin
                for (int i = 0; i < field_len_i; i += 2) begin
                    cksum_val += {pkt_hdr_i[field_start_i + i],
                                  pkt_hdr_i[field_start_i + i + 1]};
                end
                state <= STATE_COMPLEMENT;
            end
            STATE_COMPLEMENT: begin
                cksum_val <= cksum_val[31:16] + cksum_val[15:0];
                state <= STATE_STORE;
            end
            STATE_STORE: begin
                cksum_val <= ~(cksum_val[31:16] + cksum_val[15:0]);
                cksum_ready_o <= `TRUE;
                state <= STATE_DONE;
            end
            STATE_DONE: begin
                if (start_i == `FALSE) begin
                    // checksum
                    cksum_ready_o <= `FALSE;
                    cksum_val <= `ZERO_WORD;
                    // state
                    field_end_addr <= `ZERO_ADDR;
                    state <= STATE_FREE;
                end
            end
            default: begin
                state <= STATE_FREE;
            end
            endcase
        end
    end

    always @(*) begin
        cksum_val_o <= cksum_val;
    end

endmodule
