`include "def.svh"

module proc_latch(
    input wire clk,
    input wire rst,
    // input
    input wire wr_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    // output
    input wire rd_i,
    output reg [`BYTE_BUS] pkt_hdr_o [0:`HDR_MAX_LEN - 1],
    // signal
    output reg empty_o
);

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            empty_o <= `TRUE;
            for (int i = 0; i < `HDR_MAX_LEN; i++) begin
                pkt_hdr_o[i] <= `ZERO_BYTE;
            end
        end else begin
            if (empty_o == `TRUE) begin
                // wait for producer
                if (wr_i == `TRUE) begin
                    pkt_hdr_o <= pkt_hdr_i;
                    empty_o <= `FALSE;
                end
            end else begin
                // wait for consumer
                if (rd_i == `TRUE) begin
                    for (int i = 0; i < `HDR_MAX_LEN; i++) begin
                        pkt_hdr_o[i] <= `ZERO_BYTE;
                    end
                    empty_o <= `TRUE;
                end
            end
        end
    end
    
endmodule
