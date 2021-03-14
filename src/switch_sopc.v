`include "def.v"

module switch_sopc (
    input wire clk,
    input wire rst
);

    wire [`DATA_WIDTH-1:0] tag_data;
    wire [`ADDR_WIDTH-1:0] tag_addr;

    switch switch0(
        .clk(clk),
        .rst(rst),
        .tag_data(tag_data),
        .tag_addr_o(tag_addr)
    );

    pkt_ram pkt_ram0(
        .clk(clk),
        .rst(rst),
        .addr_i(tag_addr),
        .data_o(tag_data)
    );

endmodule