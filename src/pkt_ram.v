`include "def.v"

module pkt_ram (
    input wire clk,
    input wire rst,

    input wire [`ADDR_WIDTH - 1:0] addr_i,

    output reg [`DATA_WIDTH - 1:0] data_o
);

    reg [`DATA_WIDTH - 1:0] memory [63:0];    // 64 x 32 bytes

    initial begin
        $display("Loading packet");
        $readmemh("D:\\year4\\final_paper\\ReconfSwitch\\src\\packet.data", memory);
    end

    always @(posedge clk) begin
        if (rst == `RST_ENABLED) begin
            data_o <= `ZERO_WORD;
        end else begin
            data_o <= memory[addr_i[`ADDR_WIDTH-1:2]];
        end
    end

endmodule