`include "def.v"

`define NEXT_TAG_VAL    31:16
`define NEXT_HDR_ID     15:0

`define STATE_FREE      2'h0
`define STATE_LOAD      2'h1
`define STATE_PARSING   2'h2
`define STATE_DONE      2'h3

module switch(
    input wire clk,
    input wire rst,

    // for sram
    output reg sram_ce_o,
    output reg sram_we_o,
    output reg [`ADDR_BUS] sram_addr_o,
    output reg [3:0] sram_sel_o,
    output reg [`DATA_BUS] sram_data_o,
    input wire [`DATA_BUS] sram_data_i
);

    // parser information
    reg [`DATA_BUS] hdr_lens [`NUM_HEADERS - 1:0];
    reg [`DATA_BUS] next_tag_starts[`NUM_HEADERS - 1:0];
    reg [`DATA_BUS] next_tag_lens[`NUM_HEADERS - 1:0];
    reg [`DATA_BUS] next_table[`NUM_HEADERS - 1:0][`NEXT_TABLE_SIZE - 1:0];

    // outputs
    reg [`DATA_BUS] parsed_hdrs [`NUM_HEADERS - 1:0];   // header offsets in the packet

    reg [1:0] state;
    reg [`DATA_BUS] hdr_id;
    reg [`ADDR_BUS] hdr_addr;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // ethernet header
            hdr_lens[0] <= 14;
            next_tag_starts[0] <= 12;
            next_tag_lens[0] <= 2;
            next_table[0][0] <= {16'h0800, 16'h0001};
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

            // sram
            sram_ce_o <= `FALSE;
            sram_we_o <= `FALSE;
            sram_addr_o <= `ZERO_WORD;
            sram_sel_o <= 4'b0000;
            sram_data_o <= `ZERO_WORD;

            // parse state
            state <= `STATE_FREE;
            hdr_id <= `NO_HEADER;
        end else begin
            case (state)
                `STATE_FREE: begin
                    sram_ce_o <= `TRUE;
                    sram_we_o <= `FALSE;
                    sram_addr_o <= next_tag_starts[0];  // tag addr
                    sram_sel_o <= 4'b1111;

                    state <= `STATE_LOAD;
                    hdr_id <= 0;
                    hdr_addr <= `ZERO_WORD;
                end
                `STATE_LOAD: begin
                    state <= `STATE_PARSING;
                end
                `STATE_PARSING: begin
                    case (hdr_id)
                    0: begin
                        // parse current header offset
                        parsed_hdrs[0] <= hdr_addr;
                        hdr_addr <= hdr_addr + hdr_lens[0];
                        // match next table
                        if (sram_data_i[`NEXT_TAG_VAL] == next_table[0][0][`NEXT_TAG_VAL]) begin
                            hdr_id <= next_table[0][0][`NEXT_HDR_ID];
                            sram_addr_o <= hdr_addr + hdr_lens[0] + next_tag_starts[next_table[0][0][`NEXT_HDR_ID]];
                            state <= `STATE_LOAD;
                        end else if (sram_data_i[`NEXT_TAG_VAL] == next_table[0][1][`NEXT_TAG_VAL]) begin
                            hdr_id <= next_table[0][1][`NEXT_HDR_ID];
                            sram_addr_o <= hdr_addr + hdr_lens[0] + next_tag_starts[next_table[0][1][`NEXT_HDR_ID]];
                            state <= `STATE_LOAD;
                        end else begin
                            hdr_id <= `NUM_HEADERS;
                            sram_ce_o <= `FALSE;
                            state <= `STATE_DONE;
                        end
                    end
                    1: begin
                        parsed_hdrs[1] <= hdr_addr;
                        hdr_addr <= hdr_addr + hdr_lens[1];
                        if (sram_data_i[`NEXT_TAG_VAL] == next_table[1][0][`NEXT_TAG_VAL]) begin
                            hdr_id <= next_table[1][0][`NEXT_HDR_ID];
                            sram_addr_o <= hdr_addr + hdr_lens[1] + next_tag_starts[next_table[1][0][`NEXT_HDR_ID]];
                            state <= `STATE_LOAD;
                        end else if (sram_data_i[`NEXT_TAG_VAL] == next_table[1][1][`NEXT_TAG_VAL]) begin
                            hdr_id <= next_table[1][1][`NEXT_HDR_ID];
                            sram_addr_o <= hdr_addr + hdr_lens[1] + next_tag_starts[next_table[1][1][`NEXT_HDR_ID]];
                            state <= `STATE_LOAD;
                        end else begin
                            hdr_id <= `NUM_HEADERS;
                            sram_addr_o <= `ZERO_WORD;
                            state <= `STATE_DONE;
                        end
                    end
                    default: begin
                        hdr_id <= 0;
                    end
                    endcase
                end
                `STATE_DONE: begin
                    sram_ce_o <= `FALSE;
                end
                default: begin
                    state <= `STATE_FREE;
                end
            endcase
            
        end
    end

endmodule
