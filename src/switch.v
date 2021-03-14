`include "def.v"

module switch(
    input wire clk,
    input wire rst,

    input wire [`DATA_WIDTH - 1:0] pkt_data,
    output reg [`ADDR_WIDTH - 1:0] pkt_addr
);

    always @(posedge clk) begin
        if (rst == `RST_ENABLED) begin
            pkt_addr <= `ZERO_WORD;
        end else begin
            pkt_addr <= pkt_addr + 4;
        end
    end

endmodule
