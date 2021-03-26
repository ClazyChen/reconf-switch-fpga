`include "def.svh"

module hash (
    input wire clk,
    input wire rst,
    input wire start_i,
    input wire [`QUAD_BUS] key_i,
    output reg hash_ready_o,
    output reg [`DATA_BUS] hash_val_o
);

    reg [`HASH_STATE_BUS] state;
    reg [`DATA_BUS] hash_val;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            hash_ready_o <= `FALSE;
            hash_val <= `ZERO_WORD;
            state <= `HASH_STATE_FREE;
        end else begin
            case (state)
            `HASH_STATE_FREE: begin
                if (start_i) begin
                    hash_ready_o <= `FALSE;
                    hash_val <= key_i[7:0] + key_i[15:8] + key_i[23:16] +
                                key_i[31:24] + key_i[39:32] + key_i[47:40] +
                                key_i[55:48] + key_i[63:56];
                    state <= `HASH_STATE_SUM;
                end
            end
            `HASH_STATE_SUM: begin
                hash_ready_o <= `TRUE;
                hash_val <= hash_val[15:8] + hash_val[7:0];
                state <= `HASH_STATE_DONE;
            end
            `HASH_STATE_DONE: begin
                if (start_i == `FALSE) begin
                    state <= `HASH_STATE_FREE;
                end
            end
            default: begin
                state <= `HASH_STATE_FREE;
            end
            endcase
        end
    end

    always @(*) begin
        assign hash_val_o = hash_val;
    end

endmodule