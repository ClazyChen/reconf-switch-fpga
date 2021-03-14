`include "def.v"

module switch_sopc (
    input wire clk,
    input wire rst
);

    wire [`DATA_WIDTH-1:0] hdr_data;
    wire [`ADDR_WIDTH-1:0] hdr_addr;

    switch switch0(
        .clk(clk),
        .rst(rst),
        .hdr_data(hdr_data),
        .hdr_addr_o(hdr_addr)
    );

    pkt_ram pkt_ram0(
        .clk(clk),
        .rst(rst),
        .addr_i(hdr_addr),
        .data_o(hdr_data)
    );

endmodule