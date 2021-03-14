`include "def.v"

module switch(
    input wire clk,
    input wire rst,

    input wire [`DATA_WIDTH - 1:0] hdr_data,
    output reg [`ADDR_WIDTH - 1:0] hdr_addr_o
);

    integer i;

    reg [4:0] hdr_id;
    reg [`ADDR_WIDTH - 1:0] hdr_addr;
    reg [`DATA_WIDTH - 1:0] hdr_lens [`NUM_HEADERS - 1:0];  // header lengths

    reg [`DATA_WIDTH - 1:0] parsed_hdrs [`NUM_HEADERS - 1:0];   // parsed header offsets in the packet

    always @(posedge clk) begin
        if (rst == `RST_ENABLED) begin
            hdr_addr <= `ZERO_WORD;
            hdr_id <= 0;
            // init header length
            hdr_lens[0] <= 14;  // ether len
            hdr_lens[1] <= 20;  // ip len
            // init parsed headers
            parsed_hdrs[0] <= `NO_HEADER;
            parsed_hdrs[1] <= `NO_HEADER;
        end else begin
            if (hdr_id == 0) begin
                parsed_hdrs[0] <= hdr_addr;
                hdr_addr <= hdr_addr + hdr_lens[0];
                hdr_id <= 1;
            end else if (hdr_id == 1) begin
                parsed_hdrs[1] <= hdr_addr;
                hdr_addr <= hdr_addr + hdr_lens[1];
                hdr_id <= 2;
            end
        end
    end

    always @(*) begin
        hdr_addr_o <= hdr_addr;
    end

endmodule
