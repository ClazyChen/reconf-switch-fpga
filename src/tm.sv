`include "def.svh"

module tm(
    input wire clk,
    input wire rst,

    input wire [`NUM_PORTS - 1:0] tm_out_port_i,
    input wire [`BYTE_BUS] tm_pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    output reg [`NUM_PORTS - 1:0] tm_out_port_o,
    output reg [`BYTE_BUS] tm_pkt_hdr_o [0:`HDR_MAX_LEN - 1]
);

    always @(*) begin
        if (rst == `TRUE) begin
            for (int i = 0; i < `HDR_MAX_LEN; i++) begin
                tm_pkt_hdr_o[i] = 0;
            end
            tm_out_port_o = 0;
        end else begin
            for (int i = 0; i < `HDR_MAX_LEN; i++) begin
                tm_pkt_hdr_o = tm_pkt_hdr_i;
            end
            tm_out_port_o = tm_out_port_i;
        end
    end

endmodule