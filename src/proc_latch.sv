`include "def.svh"

module proc_latch(
    input wire clk,
    input wire rst,
    // input
    input wire wr_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    input wire [`NUM_PORTS - 1:0] out_port_i, 
    // output
    input wire rd_i,
    output reg [`BYTE_BUS] pkt_hdr_o [0:`HDR_MAX_LEN - 1],
    output reg [`NUM_PORTS - 1:0] out_port_o,
    // signal
    output reg empty_o
);

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            empty_o <= `TRUE;
            for (int i = 0; i < `HDR_MAX_LEN; i++) begin
                pkt_hdr_o[i] <= `ZERO_BYTE;
            end
            out_port_o <= 0;
        end else begin
            if (empty_o == `TRUE) begin
                // wait for producer
                if (wr_i == `TRUE) begin
                    empty_o <= `FALSE;
                    pkt_hdr_o <= pkt_hdr_i;
                    out_port_o <= out_port_i;
                end
            end else begin
                // wait for consumer
                if (rd_i == `TRUE) begin
                    empty_o <= `TRUE;
                    for (int i = 0; i < `HDR_MAX_LEN; i++) begin
                        pkt_hdr_o[i] <= `ZERO_BYTE;
                    end
                    out_port_o <= 0;
                end
            end
        end
    end
    
endmodule
