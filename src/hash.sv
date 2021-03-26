`include "def.svh"

module hash (
    input wire clk,
    input wire rst,
    input wire start_i,
    input wire [`QUAD_BUS] key_i,
    output reg hash_ready_o,
    output reg [`DATA_BUS] hash_val_o
);

    enum {
        STATE_FREE, STATE_SUM1, STATE_SUM2, STATE_DONE
    } state;

    reg [`DATA_BUS] hash_val;

    always @(*) begin
        if (rst == `TRUE) begin
            hash_ready_o <= `FALSE;
            hash_val <= `ZERO_WORD;
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (start_i) begin
                    hash_ready_o <= `FALSE;
                    hash_val <= key_i[7:0] + key_i[15:8] + key_i[23:16] +
                                key_i[31:24] + key_i[39:32] + key_i[47:40] +
                                key_i[55:48] + key_i[63:56];
                    state <= STATE_SUM1;
                end
            end
            STATE_SUM1: begin
                hash_val <= hash_val[15:8] + hash_val[7:0];
                state <= STATE_SUM2;
            end
            STATE_SUM2: begin
                hash_ready_o <= `TRUE;
                hash_val <= hash_val[15:8] + hash_val[7:0];
                state <= STATE_DONE;
            end
            STATE_DONE: begin
                if (start_i == `FALSE) begin
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
        assign hash_val_o = hash_val;
    end

endmodule