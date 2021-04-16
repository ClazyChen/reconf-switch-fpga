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

    // reg
    reg [`DATA_BUS] hdr_id;
    reg [`ADDR_BUS] hdr_addr;
    reg [`HALF_BUS] next_tag;

    // parser information
    reg [`DATA_BUS] hdr_lens [`NUM_HEADERS - 1:0];
    reg [`DATA_BUS] next_tag_starts[`NUM_HEADERS - 1:0];
    reg [`DATA_BUS] next_tag_lens[`NUM_HEADERS - 1:0];
    reg [`DATA_BUS] next_table[`NUM_HEADERS - 1:0][`NEXT_TABLE_SIZE - 1:0];

    wire [`DATA_BUS] hdr0_len;
    wire [`DATA_BUS] hdr0_tag_start;
    wire [`DATA_BUS] hdr0_tag_len;
    wire [`DATA_BUS] hdr0_next0_tag;
    wire [`DATA_BUS] hdr0_next0_hdr;
    wire [`DATA_BUS] hdr0_next1_tag;
    wire [`DATA_BUS] hdr0_next1_hdr;
    assign hdr0_len = hdr_lens[0];
    assign hdr0_tag_start = next_tag_starts[0];
    assign hdr0_tag_len = next_tag_lens[0];
    assign hdr0_next0_tag = next_table[0][0][31:16];
    assign hdr0_next0_hdr = next_table[0][0][15:0];
    assign hdr0_next1_tag = next_table[0][1][31:16];
    assign hdr0_next1_hdr = next_table[0][1][15:0];

    wire [`DATA_BUS] hdr1_len;
    wire [`DATA_BUS] hdr1_tag_start;
    wire [`DATA_BUS] hdr1_tag_len;
    wire [`DATA_BUS] hdr1_next0_tag;
    wire [`DATA_BUS] hdr1_next0_hdr;
    wire [`DATA_BUS] hdr1_next1_tag;
    wire [`DATA_BUS] hdr1_next1_hdr;
    assign hdr1_len = hdr_lens[1];
    assign hdr1_tag_start = next_tag_starts[1];
    assign hdr1_tag_len = next_tag_lens[1];
    assign hdr1_next0_tag = next_table[1][0][31:16];
    assign hdr1_next0_hdr = next_table[1][0][15:0];
    assign hdr1_next1_tag = next_table[1][1][31:16];
    assign hdr1_next1_hdr = next_table[1][1][15:0];

    wire [`ADDR_BUS] hdr0_next0_start;
    assign hdr0_next0_start = hdr_addr + hdr0_len + next_tag_starts[hdr0_next0_hdr];
    wire [`ADDR_BUS] hdr0_next1_start;
    assign hdr0_next1_start = hdr_addr + hdr0_len + next_tag_starts[hdr0_next1_hdr];

    wire [`ADDR_BUS] hdr1_next0_start;
    assign hdr1_next0_start = hdr_addr + hdr1_len + next_tag_starts[hdr1_next0_hdr];
    wire [`ADDR_BUS] hdr1_next1_start;
    assign hdr1_next1_start = hdr_addr + hdr1_len + next_tag_starts[hdr1_next1_hdr];

    enum {
        STATE_FREE, STATE_PARSING
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
                    state <= STATE_PARSING;
                end
            end
            STATE_PARSING: begin
                case (hdr_id)
                0: begin
                    // parse current header offset
                    parsed_hdrs_o[0] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr0_len;
                    // match next table
                    if (next_tag == hdr0_next0_tag) begin
                        hdr_id <= hdr0_next0_hdr;
                    end else if (next_tag == hdr0_next1_tag) begin
                        hdr_id <= hdr0_next1_hdr;
                    end else begin
                        hdr_id <= `NUM_HEADERS;
                        ready_o <= `TRUE;
                        state <= STATE_FREE;
                    end
                end
                1: begin
                    parsed_hdrs_o[1] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr1_len;
                    if (next_tag == hdr1_next0_tag) begin
                        hdr_id <= hdr1_next0_hdr;
                    end else if (next_tag == hdr1_next1_tag) begin
                        hdr_id <= hdr1_next1_hdr;
                    end else begin
                        hdr_id <= `NUM_HEADERS;
                        ready_o <= `TRUE;
                        state <= STATE_FREE;
                    end
                end
                default: begin
                    hdr_id <= 0;
                end
                endcase
            end
            default: begin
                state <= STATE_FREE;
            end
            endcase
        end
    end

    always @(*) begin
        if (rst == `TRUE) begin
            next_tag = `ZERO_HALF;
        end else begin
            if (hdr_id == 0) begin
                if (hdr0_tag_len == 1) begin
                    next_tag = {`ZERO_BYTE, pkt_hdr_i[hdr_addr + hdr0_tag_start]};
                end else begin
                    next_tag = {pkt_hdr_i[hdr_addr + hdr0_tag_start],
                                pkt_hdr_i[hdr_addr + hdr0_tag_start + 1]};
                end
            end else begin
                if (hdr1_tag_len == 1) begin
                    next_tag = {`ZERO_BYTE, pkt_hdr_i[hdr_addr + hdr1_tag_start]};
                end else begin
                    next_tag = {pkt_hdr_i[hdr_addr + hdr1_tag_start],
                                pkt_hdr_i[hdr_addr + hdr1_tag_start + 1]};
                end
            end
        end
    end

endmodule

module next_tag_calc(
    input wire clk,
    input wire rst,
    output reg c
);
    assign c = 1;
endmodule
