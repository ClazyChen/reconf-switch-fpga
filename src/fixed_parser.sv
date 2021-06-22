`include "def.svh"

module fixed_parser(
    input wire clk,
    input wire rst,
    input wire start_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    // output
    output reg ready_o,
    output reg [`DATA_BUS] parsed_hdrs_o [`NUM_HEADERS - 1:0]
);

    // reg
    reg [`DATA_BUS] hdr_id;
    reg [`ADDR_BUS] hdr_addr;
    reg [`HALF_BUS] next_tag;

    // parse graph
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

    wire [`DATA_BUS] hdr2_len;
    wire [`DATA_BUS] hdr2_tag_start;
    wire [`DATA_BUS] hdr2_tag_len;
    wire [`DATA_BUS] hdr2_next0_tag;
    wire [`DATA_BUS] hdr2_next0_hdr;
    wire [`DATA_BUS] hdr2_next1_tag;
    wire [`DATA_BUS] hdr2_next1_hdr;
    assign hdr2_len = hdr_lens[2];
    assign hdr2_tag_start = next_tag_starts[2];
    assign hdr2_tag_len = next_tag_lens[2];
    assign hdr2_next0_tag = next_table[2][0][31:16];
    assign hdr2_next0_hdr = next_table[2][0][15:0];
    assign hdr2_next1_tag = next_table[2][1][31:16];
    assign hdr2_next1_hdr = next_table[2][1][15:0];

    wire [`DATA_BUS] hdr3_len;
    wire [`DATA_BUS] hdr3_tag_start;
    wire [`DATA_BUS] hdr3_tag_len;
    wire [`DATA_BUS] hdr3_next0_tag;
    wire [`DATA_BUS] hdr3_next0_hdr;
    wire [`DATA_BUS] hdr3_next1_tag;
    wire [`DATA_BUS] hdr3_next1_hdr;
    assign hdr3_len = hdr_lens[3];
    assign hdr3_tag_start = next_tag_starts[3];
    assign hdr3_tag_len = next_tag_lens[3];
    assign hdr3_next0_tag = next_table[3][0][31:16];
    assign hdr3_next0_hdr = next_table[3][0][15:0];
    assign hdr3_next1_tag = next_table[3][1][31:16];
    assign hdr3_next1_hdr = next_table[3][1][15:0];

    wire [`DATA_BUS] hdr4_len;
    wire [`DATA_BUS] hdr4_tag_start;
    wire [`DATA_BUS] hdr4_tag_len;
    wire [`DATA_BUS] hdr4_next0_tag;
    wire [`DATA_BUS] hdr4_next0_hdr;
    wire [`DATA_BUS] hdr4_next1_tag;
    wire [`DATA_BUS] hdr4_next1_hdr;
    assign hdr4_len = hdr_lens[4];
    assign hdr4_tag_start = next_tag_starts[4];
    assign hdr4_tag_len = next_tag_lens[4];
    assign hdr4_next0_tag = next_table[4][0][31:16];
    assign hdr4_next0_hdr = next_table[4][0][15:0];
    assign hdr4_next1_tag = next_table[4][1][31:16];
    assign hdr4_next1_hdr = next_table[4][1][15:0];

    wire [`DATA_BUS] hdr5_len;
    wire [`DATA_BUS] hdr5_tag_start;
    wire [`DATA_BUS] hdr5_tag_len;
    wire [`DATA_BUS] hdr5_next0_tag;
    wire [`DATA_BUS] hdr5_next0_hdr;
    wire [`DATA_BUS] hdr5_next1_tag;
    wire [`DATA_BUS] hdr5_next1_hdr;
    assign hdr5_len = hdr_lens[5];
    assign hdr5_tag_start = next_tag_starts[5];
    assign hdr5_tag_len = next_tag_lens[5];
    assign hdr5_next0_tag = next_table[5][0][31:16];
    assign hdr5_next0_hdr = next_table[5][0][15:0];
    assign hdr5_next1_tag = next_table[5][1][31:16];
    assign hdr5_next1_hdr = next_table[5][1][15:0];

    wire [`DATA_BUS] hdr6_len;
    wire [`DATA_BUS] hdr6_tag_start;
    wire [`DATA_BUS] hdr6_tag_len;
    wire [`DATA_BUS] hdr6_next0_tag;
    wire [`DATA_BUS] hdr6_next0_hdr;
    wire [`DATA_BUS] hdr6_next1_tag;
    wire [`DATA_BUS] hdr6_next1_hdr;
    assign hdr6_len = hdr_lens[6];
    assign hdr6_tag_start = next_tag_starts[6];
    assign hdr6_tag_len = next_tag_lens[6];
    assign hdr6_next0_tag = next_table[6][0][31:16];
    assign hdr6_next0_hdr = next_table[6][0][15:0];
    assign hdr6_next1_tag = next_table[6][1][31:16];
    assign hdr6_next1_hdr = next_table[6][1][15:0];

    wire [`DATA_BUS] hdr7_len;
    wire [`DATA_BUS] hdr7_tag_start;
    wire [`DATA_BUS] hdr7_tag_len;
    wire [`DATA_BUS] hdr7_next0_tag;
    wire [`DATA_BUS] hdr7_next0_hdr;
    wire [`DATA_BUS] hdr7_next1_tag;
    wire [`DATA_BUS] hdr7_next1_hdr;
    assign hdr7_len = hdr_lens[7];
    assign hdr7_tag_start = next_tag_starts[7];
    assign hdr7_tag_len = next_tag_lens[7];
    assign hdr7_next0_tag = next_table[7][0][31:16];
    assign hdr7_next0_hdr = next_table[7][0][15:0];
    assign hdr7_next1_tag = next_table[7][1][31:16];
    assign hdr7_next1_hdr = next_table[7][1][15:0];

    wire [`ADDR_BUS] hdr0_next0_start;
    assign hdr0_next0_start = hdr_addr + hdr0_len + next_tag_starts[hdr0_next0_hdr];
    wire [`ADDR_BUS] hdr0_next1_start;
    assign hdr0_next1_start = hdr_addr + hdr0_len + next_tag_starts[hdr0_next1_hdr];

    wire [`ADDR_BUS] hdr1_next0_start;
    assign hdr1_next0_start = hdr_addr + hdr1_len + next_tag_starts[hdr1_next0_hdr];
    wire [`ADDR_BUS] hdr1_next1_start;
    assign hdr1_next1_start = hdr_addr + hdr1_len + next_tag_starts[hdr1_next1_hdr];

    wire [`ADDR_BUS] hdr2_next0_start;
    assign hdr2_next0_start = hdr_addr + hdr2_len + next_tag_starts[hdr2_next0_hdr];
    wire [`ADDR_BUS] hdr2_next1_start;
    assign hdr2_next1_start = hdr_addr + hdr2_len + next_tag_starts[hdr2_next1_hdr];

    wire [`ADDR_BUS] hdr3_next0_start;
    assign hdr3_next0_start = hdr_addr + hdr3_len + next_tag_starts[hdr3_next0_hdr];
    wire [`ADDR_BUS] hdr3_next1_start;
    assign hdr3_next1_start = hdr_addr + hdr3_len + next_tag_starts[hdr3_next1_hdr];

    wire [`ADDR_BUS] hdr4_next0_start;
    assign hdr4_next0_start = hdr_addr + hdr4_len + next_tag_starts[hdr4_next0_hdr];
    wire [`ADDR_BUS] hdr4_next1_start;
    assign hdr4_next1_start = hdr_addr + hdr4_len + next_tag_starts[hdr4_next1_hdr];

    wire [`ADDR_BUS] hdr5_next0_start;
    assign hdr5_next0_start = hdr_addr + hdr5_len + next_tag_starts[hdr5_next0_hdr];
    wire [`ADDR_BUS] hdr5_next1_start;
    assign hdr5_next1_start = hdr_addr + hdr5_len + next_tag_starts[hdr5_next1_hdr];

    wire [`ADDR_BUS] hdr6_next0_start;
    assign hdr6_next0_start = hdr_addr + hdr6_len + next_tag_starts[hdr6_next0_hdr];
    wire [`ADDR_BUS] hdr6_next1_start;
    assign hdr6_next1_start = hdr_addr + hdr6_len + next_tag_starts[hdr6_next1_hdr];

    wire [`ADDR_BUS] hdr7_next0_start;
    assign hdr7_next0_start = hdr_addr + hdr7_len + next_tag_starts[hdr7_next0_hdr];
    wire [`ADDR_BUS] hdr7_next1_start;
    assign hdr7_next1_start = hdr_addr + hdr7_len + next_tag_starts[hdr7_next1_hdr];

    enum {
        STATE_FREE, STATE_PARSING
    } state;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // output
            ready_o <= `FALSE;
            parsed_hdrs_o <= {`NO_HEADER, `NO_HEADER, `NO_HEADER, `NO_HEADER,
                `NO_HEADER, `NO_HEADER, `NO_HEADER, `NO_HEADER};
            // parser

            // ethernet header
            hdr_lens[0] <= 14;
            next_tag_starts[0] <= 12;
            next_tag_lens[0] <= 2;
            next_table[0][0] <=  {16'h0800, 16'h0001};
            for (int i = 1; i < `NEXT_TABLE_SIZE; i++) begin
                next_table[0][i] <= {2{i[15:0]}};
            end

            // ip header
            hdr_lens[1] <= 20;
            next_tag_starts[1] <= 9;
            next_tag_lens[1] <= 1;
            next_table[1][0] <= {16'h0011, 16'h0002};
            for (int i = 1; i < `NEXT_TABLE_SIZE; i++) begin
                next_table[1][i] <= {2{i[15:0]}};
            end

            // udp header
            hdr_lens[2] <= 8;
            next_tag_starts[2] <= 32'hffff_ffff;
            next_tag_lens[2] <= 32'hffff_ffff;
            next_table[2][0] <= {16'hffff, 16'h0003};
            for (int i = 1; i < `NEXT_TABLE_SIZE; i++) begin
                next_table[2][i] <= {2{i[15:0]}};
            end

            for (int i = 3; i < `NUM_HEADERS; i++) begin
                hdr_lens[i] <= `ZERO_WORD;
                next_tag_starts[i] <= `ZERO_WORD;
                next_tag_lens[i] <= `ZERO_WORD;
                for (int j = 0; j < `NEXT_TABLE_SIZE; j++) begin
                    next_table[i][j] <= {2{i[15:0]}};
                end
            end

            // reg
            hdr_id <= `NO_HEADER;
            hdr_addr <= `ZERO_ADDR;
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (start_i == `TRUE) begin
                    // output
                    ready_o <= `FALSE;
                    parsed_hdrs_o <= {
                        `NO_HEADER, `NO_HEADER, `NO_HEADER, `NO_HEADER,
                        `NO_HEADER, `NO_HEADER, `NO_HEADER, `NO_HEADER
                    };
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
                    for (int i = 0; i < `NEXT_TABLE_SIZE; i++) begin
                        if (next_tag == next_table[0][i][31:16]) begin
                            hdr_id <= next_table[0][i][15:0];
                            break;
                        end
                    end
                end
                1: begin
                    parsed_hdrs_o[1] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr1_len;
                    for (int i = 0; i < `NEXT_TABLE_SIZE; i++) begin
                        if (next_tag == next_table[1][i][31:16]) begin
                            hdr_id <= next_table[1][i][15:0];
                            break;
                        end
                    end
                end
                2: begin
                    parsed_hdrs_o[2] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr2_len;
                     for (int i = 0; i < `NEXT_TABLE_SIZE; i++) begin
                        if (next_tag == next_table[2][i][31:16]) begin
                            hdr_id <= next_table[2][i][15:0];
                            break;
                        end
                    end
                end
                3: begin
                    parsed_hdrs_o[3] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr3_len;
                    for (int i = 0; i < `NEXT_TABLE_SIZE; i++) begin
                        if (next_tag == next_table[3][i][31:16]) begin
                            hdr_id <= next_table[3][i][15:0];
                            break;
                        end
                    end
                end
                4: begin
                    parsed_hdrs_o[4] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr4_len;
                    for (int i = 0; i < `NEXT_TABLE_SIZE; i++) begin
                        if (next_tag == next_table[4][i][31:16]) begin
                            hdr_id <= next_table[4][i][15:0];
                            break;
                        end
                    end
                end
                5: begin
                    parsed_hdrs_o[5] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr5_len;
                    for (int i = 0; i < `NEXT_TABLE_SIZE; i++) begin
                        if (next_tag == next_table[5][i][31:16]) begin
                            hdr_id <= next_table[5][i][15:0];
                            break;
                        end
                    end
                end
                6: begin
                    parsed_hdrs_o[6] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr6_len;
                    for (int i = 0; i < `NEXT_TABLE_SIZE; i++) begin
                        if (next_tag == next_table[6][i][31:16]) begin
                            hdr_id <= next_table[6][i][15:0];
                            break;
                        end
                    end
                end
                7: begin
                    parsed_hdrs_o[7] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr7_len;
                    for (int i = 0; i < `NEXT_TABLE_SIZE; i++) begin
                        if (next_tag == next_table[7][i][31:16]) begin
                            hdr_id <= next_table[7][i][15:0];
                            break;
                        end
                    end
                end
                32'h0000ffff: begin
                    ready_o <= `TRUE;
                    state <= STATE_FREE;
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
            case (hdr_id)
            0: begin
                if (hdr0_tag_len == 1) begin
                    next_tag = {`ZERO_BYTE, pkt_hdr_i[hdr_addr + hdr0_tag_start]};
                end else begin
                    next_tag = {pkt_hdr_i[hdr_addr + hdr0_tag_start],
                                pkt_hdr_i[hdr_addr + hdr0_tag_start + 1]};
                end
            end
            1: begin
                if (hdr1_tag_len == 1) begin
                    next_tag = {`ZERO_BYTE, pkt_hdr_i[hdr_addr + hdr1_tag_start]};
                end else begin
                    next_tag = {pkt_hdr_i[hdr_addr + hdr1_tag_start],
                                pkt_hdr_i[hdr_addr + hdr1_tag_start + 1]};
                end
            end
            2: begin
                if (hdr2_tag_len == 1) begin
                    next_tag = {`ZERO_BYTE, pkt_hdr_i[hdr_addr + hdr2_tag_start]};
                end else begin
                    next_tag = {pkt_hdr_i[hdr_addr + hdr2_tag_start],
                                pkt_hdr_i[hdr_addr + hdr2_tag_start + 1]};
                end
            end
            3: begin
                if (hdr3_tag_len == 1) begin
                    next_tag = {`ZERO_BYTE, pkt_hdr_i[hdr_addr + hdr3_tag_start]};
                end else begin
                    next_tag = {pkt_hdr_i[hdr_addr + hdr3_tag_start],
                                pkt_hdr_i[hdr_addr + hdr3_tag_start + 1]};
                end
            end
            4: begin
                if (hdr4_tag_len == 1) begin
                    next_tag = {`ZERO_BYTE, pkt_hdr_i[hdr_addr + hdr4_tag_start]};
                end else begin
                    next_tag = {pkt_hdr_i[hdr_addr + hdr4_tag_start],
                                pkt_hdr_i[hdr_addr + hdr4_tag_start + 1]};
                end
            end
            5: begin
                if (hdr5_tag_len == 1) begin
                    next_tag = {`ZERO_BYTE, pkt_hdr_i[hdr_addr + hdr5_tag_start]};
                end else begin
                    next_tag = {pkt_hdr_i[hdr_addr + hdr5_tag_start],
                                pkt_hdr_i[hdr_addr + hdr5_tag_start + 1]};
                end
            end
            6: begin
                if (hdr6_tag_len == 1) begin
                    next_tag = {`ZERO_BYTE, pkt_hdr_i[hdr_addr + hdr6_tag_start]};
                end else begin
                    next_tag = {pkt_hdr_i[hdr_addr + hdr6_tag_start],
                                pkt_hdr_i[hdr_addr + hdr6_tag_start + 1]};
                end
            end
            7: begin
                if (hdr7_tag_len == 1) begin
                    next_tag = {`ZERO_BYTE, pkt_hdr_i[hdr_addr + hdr7_tag_start]};
                end else begin
                    next_tag = {pkt_hdr_i[hdr_addr + hdr7_tag_start],
                                pkt_hdr_i[hdr_addr + hdr7_tag_start + 1]};
                end
            end
            endcase
        end
    end

endmodule
