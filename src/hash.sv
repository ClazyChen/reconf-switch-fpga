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
        STATE_FREE, STATE_SUM1, STATE_SUM2
    } state;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            hash_ready_o <= `FALSE;
            hash_val_o <= `ZERO_WORD;
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (start_i) begin
                    hash_ready_o <= `FALSE;
                    hash_val_o <= key_i[7:0] + key_i[15:8] + key_i[23:16] +
                                key_i[31:24] + key_i[39:32] + key_i[47:40] +
                                key_i[55:48] + key_i[63:56];
                    state <= STATE_SUM1;
                end
            end
            STATE_SUM1: begin
                hash_val_o <= hash_val_o[15:8] + hash_val_o[7:0];
                state <= STATE_SUM2;
            end
            STATE_SUM2: begin
                hash_ready_o <= `TRUE;
                hash_val_o <= hash_val_o[15:8] + hash_val_o[7:0];
                state <= STATE_FREE;
            end
            default: begin
                state <= STATE_FREE;
            end
            endcase
        end
    end

endmodule