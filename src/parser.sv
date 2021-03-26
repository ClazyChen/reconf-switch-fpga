`include "def.svh"

module parser(
    input wire clk,
    input wire rst,
    input wire start_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    // output
    output reg ready_o,
    output reg [`DATA_BUS] parsed_hdrs_o [`NUM_HEADERS - 1:0],
    // modify
    input wire mod_start_i,
    input wire [`DATA_BUS] mod_hdr_id_i,
    input wire [`DATA_BUS] mod_hdr_len_i,
    input wire [`DATA_BUS] mod_next_tag_start_i,
    input wire [`DATA_BUS] mod_next_tag_len_i,
    input wire [`DATA_BUS] mod_next_table_i [`NEXT_TABLE_SIZE - 1:0]
);

    // parser information
    reg [`DATA_BUS] hdr_lens [`NUM_HEADERS - 1:0];
    reg [`DATA_BUS] next_tag_starts[`NUM_HEADERS - 1:0];
    reg [`DATA_BUS] next_tag_lens[`NUM_HEADERS - 1:0];
    reg [`DATA_BUS] next_table[`NUM_HEADERS - 1:0][`NEXT_TABLE_SIZE - 1:0];

    // reg
    reg [`DATA_BUS] hdr_id;
    reg [`ADDR_BUS] hdr_addr;
    reg [`HALF_BUS] next_tag;

    enum {
        STATE_BUS, STATE_FREE, STATE_PARSING, STATE_DONE
    } state;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // output
            ready_o <= `FALSE;
            parsed_hdrs_o <= {`NO_HEADER, `NO_HEADER};
            // parser
            for (int i = 0; i < `NUM_HEADERS; i++) begin
                hdr_lens[i] <= `ZERO_WORD;
                next_tag_starts[i] <= `ZERO_WORD;
                next_tag_lens[i] <= `ZERO_WORD;
                for (int j = 0; j < `NEXT_TABLE_SIZE; j++) begin
                    next_table[i][j] <= `ZERO_WORD;
                end
            end
            // reg
            hdr_id <= `NO_HEADER;
            hdr_addr <= `ZERO_ADDR;
            next_tag <= 0;
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (mod_start_i == `TRUE) begin
                    hdr_lens[mod_hdr_id_i] <= mod_hdr_len_i;
                    next_tag_starts[mod_hdr_id_i] <= mod_next_tag_start_i;
                    next_tag_lens[mod_hdr_id_i] <= mod_next_tag_len_i;
                    next_table[mod_hdr_id_i] <= mod_next_table_i;
                end else if (start_i == `TRUE) begin
                    // output
                    ready_o <= `FALSE;
                    parsed_hdrs_o <= {`NO_HEADER, `NO_HEADER};
                    // reg
                    hdr_id <= 0;
                    hdr_addr <= 0;
                    next_tag <= {pkt_hdr_i[next_tag_starts[0]], pkt_hdr_i[next_tag_starts[0] + 1]};
                    state <= STATE_PARSING;
                end
            end
            STATE_PARSING: begin
                case (hdr_id)
                0: begin
                    // parse current header offset
                    parsed_hdrs_o[0] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr_lens[0];
                    // match next table
                    if (next_tag == next_table[0][0][`NEXT_TAG_VAL]) begin
                        hdr_id <= next_table[0][0][`NEXT_HDR_ID];
                        next_tag <= pkt_hdr_i[hdr_addr + hdr_lens[0] + next_tag_starts[next_table[0][0][`NEXT_HDR_ID]]];
                    end else if (next_tag == next_table[0][1][`NEXT_TAG_VAL]) begin
                        hdr_id <= next_table[0][1][`NEXT_HDR_ID];
                        next_tag <= pkt_hdr_i[hdr_addr + hdr_lens[0] + next_tag_starts[next_table[0][1][`NEXT_HDR_ID]]];
                    end else begin
                        hdr_id <= `NUM_HEADERS;
                        ready_o <= `TRUE;
                        next_tag <= 0;
                        state <= STATE_DONE;
                    end
                end
                1: begin
                    parsed_hdrs_o[1] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr_lens[1];
                    if (next_tag == next_table[1][0][`NEXT_TAG_VAL]) begin
                        hdr_id <= next_table[1][0][`NEXT_HDR_ID];
                        next_tag <= pkt_hdr_i[hdr_addr + hdr_lens[1] + next_tag_starts[next_table[1][0][`NEXT_HDR_ID]]];
                    end else if (next_tag == next_table[1][1][`NEXT_TAG_VAL]) begin
                        hdr_id <= next_table[1][1][`NEXT_HDR_ID];
                        next_tag <= pkt_hdr_i[hdr_addr + hdr_lens[1] + next_tag_starts[next_table[1][1][`NEXT_HDR_ID]]];
                    end else begin
                        hdr_id <= `NUM_HEADERS;
                        ready_o <= `TRUE;
                        next_tag <= 0;
                        state <= STATE_DONE;
                    end
                end
                default: begin
                    hdr_id <= 0;
                end
                endcase
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

endmodule
