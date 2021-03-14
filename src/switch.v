`include "def.v"

`define NEXT_TAG_VAL    31:16
`define NEXT_HDR_ID     15:0

module switch(
    input wire clk,
    input wire rst,

    input wire [`DATA_WIDTH - 1:0] tag_data,
    output reg [`ADDR_WIDTH - 1:0] tag_addr_o
);

    // parser information
    reg [`DATA_WIDTH - 1:0] hdr_lens [`NUM_HEADERS - 1:0];
    reg [`DATA_WIDTH - 1:0] next_tag_starts[`NUM_HEADERS - 1:0];
    reg [`DATA_WIDTH - 1:0] next_tag_lens[`NUM_HEADERS - 1:0];
    reg [`DATA_WIDTH - 1:0] next_table[`NUM_HEADERS - 1:0][`NEXT_TABLE_SIZE - 1:0];

    // outputs
    reg [`DATA_WIDTH - 1:0] parsed_hdrs [`NUM_HEADERS - 1:0];   // header offsets in the packet
    reg [`ADDR_WIDTH - 1:0] tag_addr;

    reg [`DATA_WIDTH - 1:0] hdr_id;
    reg [`ADDR_WIDTH - 1:0] hdr_offset;

    always @(posedge clk) begin
        if (rst == `RST_ENABLED) begin
            // ethernet header
            hdr_lens[0] <= 14;
            next_tag_starts[0] <= 12;
            next_tag_lens[0] <= 2;
            next_table[0][0] <= 32'h0800_0001;
            next_table[0][1] <= `NO_NEXT_HEADER;
            // ip header
            hdr_lens[1] <= 20;
            next_tag_starts[1] <= 9;
            next_tag_lens[1] <= 1;
            next_table[1][0] <= `NO_NEXT_HEADER;
            next_table[1][1] <= `NO_NEXT_HEADER;
            // init parsed headers
            parsed_hdrs[0] <= `NO_HEADER;
            parsed_hdrs[1] <= `NO_HEADER;

            hdr_id <= `NO_HEADER;
            hdr_offset <= `ZERO_WORD;
            tag_addr <= next_tag_starts[0];
        end else begin
            if (hdr_id == 0) begin
                // parse current header offset
                parsed_hdrs[0] <= `ZERO_WORD;
                // match next table
                if (tag_data[`NEXT_TAG_VAL] == next_table[0][0][`NEXT_TAG_VAL]) begin
                    hdr_id <= next_table[0][0][`NEXT_HDR_ID];
                end else if (tag_data[`NEXT_TAG_VAL] == next_table[0][1][`NEXT_TAG_VAL]) begin
                    hdr_id <= next_table[0][1][`NEXT_HDR_ID];
                end else begin
                    hdr_id <= `NUM_HEADERS;
                end
                tag_addr <= hdr_lens[0] + next_tag_starts[1];
            end else if (hdr_id == 1) begin
                parsed_hdrs[1] <= parsed_hdrs[0] + hdr_lens[0];
                hdr_id <= `NUM_HEADERS;
            end else if (hdr_id == `NO_HEADER) begin
                hdr_id <= 0;
            end
        end
    end

    always @(*) begin
        tag_addr_o <= tag_addr;
    end

endmodule
