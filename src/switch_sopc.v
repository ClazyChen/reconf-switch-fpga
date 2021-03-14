`include "def.v"

module switch_sopc (
    input wire clk,
    input wire rst
);

    wire [`DATA_WIDTH-1:0] pkt_data;
    wire [`ADDR_WIDTH-1:0] pkt_addr;

    switch switch0(
        .clk(clk),
        .rst(rst),
        .pkt_data(pkt_data),
        .pkt_addr(pkt_addr)
    );

    pkt_ram pkt_ram0(
        .clk(clk),
        .rst(rst),
        .addr_i(pkt_addr),
        .data_o(pkt_data)
    );

endmodule