`include "def.vh"

module parser(
    input wire clk,
    input wire rst,
    input wire start_i,
    input wire [`ADDR_BUS] pkt_addr_i,
    // mem
    output reg mem_ce_o,
    output reg mem_we_o,
    output reg [`ADDR_BUS] mem_addr_o,
    output reg [3:0] mem_width_o,
    output reg [`DATA_BUS] mem_data_o,
    input wire [`DATA_BUS] mem_data_i,
    // output
    output reg ready_o,
    output reg [`WORD_WIDTH * `NUM_HEADERS - 1:0] parsed_hdrs_o
);

    // parser information
    wire [`DATA_BUS] hdr_lens [`NUM_HEADERS - 1:0];
    wire [`DATA_BUS] next_tag_starts[`NUM_HEADERS - 1:0];
    wire [`DATA_BUS] next_tag_lens[`NUM_HEADERS - 1:0];
    wire [`DATA_BUS] next_table[`NUM_HEADERS - 1:0][`NEXT_TABLE_SIZE - 1:0];
    // ethernet header
    assign hdr_lens[0] = 14;
    assign next_tag_starts[0] = 12;
    assign next_tag_lens[0] = 2;
    assign next_table[0][0] = {16'h0800, 16'h0001};
    assign next_table[0][1] = `NO_NEXT_HEADER;
    // ip header
    assign hdr_lens[1] = 20;
    assign next_tag_starts[1] = 9;
    assign next_tag_lens[1] = 1;
    assign next_table[1][0] = `NO_NEXT_HEADER;
    assign next_table[1][1] = `NO_NEXT_HEADER;

    // reg
    reg [`WORD_BUS] parsed_hdrs [`NUM_HEADERS - 1:0];
    reg [`DATA_BUS] hdr_id;
    reg [`ADDR_BUS] hdr_addr;
    reg [`PS_STATE_BUS] state;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // mem
            mem_ce_o <= `FALSE;
            mem_we_o <= `FALSE;
            mem_addr_o <= `ZERO_ADDR;
            mem_width_o <= 0;
            mem_data_o <= `ZERO_WORD;
            // output
            ready_o <= `FALSE;
            // reg
            parsed_hdrs[0] <= `NO_HEADER;
            parsed_hdrs[1] <= `NO_HEADER;
            hdr_id <= `NO_HEADER;
            hdr_addr <= `ZERO_ADDR;
            state <= `PS_STATE_FREE;
        end else begin
            case (state)
            `PS_STATE_FREE: begin
                if (start_i == `TRUE) begin
                    // mem
                    mem_ce_o <= `TRUE;
                    mem_we_o <= `FALSE;
                    mem_addr_o <= pkt_addr_i + next_tag_starts[0];  // tag addr
                    mem_width_o <= 4;
                    mem_data_o <= `ZERO_WORD;
                    // output
                    ready_o <= `FALSE;
                    // reg
                    parsed_hdrs[0] <= pkt_addr_i;
                    parsed_hdrs[1] <= `NO_HEADER;
                    hdr_id <= 0;
                    hdr_addr <= pkt_addr_i;
                    state <= `PS_STATE_PARSING;
                end
            end
            `PS_STATE_PARSING: begin
                case (hdr_id)
                0: begin
                    // parse current header offset
                    parsed_hdrs[0] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr_lens[0];
                    // match next table
                    if (mem_data_i[`NEXT_TAG_VAL] == next_table[0][0][`NEXT_TAG_VAL]) begin
                        hdr_id <= next_table[0][0][`NEXT_HDR_ID];
                        mem_addr_o <= hdr_addr + hdr_lens[0] + next_tag_starts[next_table[0][0][`NEXT_HDR_ID]];
                    end else if (mem_data_i[`NEXT_TAG_VAL] == next_table[0][1][`NEXT_TAG_VAL]) begin
                        hdr_id <= next_table[0][1][`NEXT_HDR_ID];
                        mem_addr_o <= hdr_addr + hdr_lens[0] + next_tag_starts[next_table[0][1][`NEXT_HDR_ID]];
                    end else begin
                        hdr_id <= `NUM_HEADERS;
                        mem_ce_o <= `FALSE;
                        ready_o <= `TRUE;
                        state <= `PS_STATE_DONE;
                    end
                end
                1: begin
                    parsed_hdrs[1] <= hdr_addr;
                    hdr_addr <= hdr_addr + hdr_lens[1];
                    if (mem_data_i[`NEXT_TAG_VAL] == next_table[1][0][`NEXT_TAG_VAL]) begin
                        hdr_id <= next_table[1][0][`NEXT_HDR_ID];
                        mem_addr_o <= hdr_addr + hdr_lens[1] + next_tag_starts[next_table[1][0][`NEXT_HDR_ID]];
                    end else if (mem_data_i[`NEXT_TAG_VAL] == next_table[1][1][`NEXT_TAG_VAL]) begin
                        hdr_id <= next_table[1][1][`NEXT_HDR_ID];
                        mem_addr_o <= hdr_addr + hdr_lens[1] + next_tag_starts[next_table[1][1][`NEXT_HDR_ID]];
                    end else begin
                        hdr_id <= `NUM_HEADERS;
                        mem_ce_o <= `FALSE;
                        ready_o <= `TRUE;
                        state <= `PS_STATE_DONE;
                    end
                end
                default: begin
                    hdr_id <= 0;
                end
                endcase
            end
            `PS_STATE_DONE: begin
                if (start_i == `FALSE) begin
                    state <= `PS_STATE_FREE;
                end
            end
            default: begin
                state <= `PS_STATE_FREE;
            end
            endcase
        end
    end

    always @(*) begin
        assign parsed_hdrs_o = {parsed_hdrs[0], parsed_hdrs[1]};
    end

endmodule
