`include "def.svh"

module fixed_executor (
    input wire clk,
    input wire rst,
    // input
    input wire start_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    input wire is_match_i,
    input wire [`BYTE_BUS] args_i [`MAX_VAL_LEN - 1:0],
    input wire [`DATA_BUS] parsed_hdrs_i [`NUM_HEADERS - 1:0],
    input wire [`NUM_PORTS - 1:0] out_port_i,
    // output
    output reg ready_o,
    output reg [`BYTE_BUS] pkt_hdr_o [0:`HDR_MAX_LEN - 1],
    output reg [`NUM_PORTS - 1:0] out_port_o
);

    // checksum module
    reg cksum_start_o;
    reg [`ADDR_BUS] cksum_field_start_o;
    reg [`DATA_BUS] cksum_field_len_o;
    wire cksum_ready_i;
    wire [`HALF_BUS] cksum_val_i;

    // op checksum state
    enum {
        CKSUM_STATE_FREE, CKSUM_STATE_ON
    } cksum_state;

    reg [`ADDR_BUS] copy_src_addr;
    reg [`ADDR_BUS] copy_src_end_addr;
    reg [`ADDR_BUS] copy_dst_addr;

    // reg
    enum {
        STATE_FREE, STATE_EXEC, STATE_EXEC_CKSUM
    } state;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // output
            ready_o <= `FALSE;
            // checksum
            cksum_start_o <= `FALSE;
            // reg
            for (int i = 0; i < `HDR_MAX_LEN; i++) begin
                pkt_hdr_o[i] <= 0;
            end
            out_port_o <= 0;
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (start_i == `TRUE) begin
                    if (is_match_i == `TRUE) begin
                        ready_o <= `FALSE;
                        state <= STATE_EXEC;
                    end else begin
                        ready_o <= `TRUE;
                        state <= STATE_FREE;
                    end
                    pkt_hdr_o <= pkt_hdr_i;
                    out_port_o <= out_port_i;
                end
            end
            STATE_EXEC: begin
                // set out port
                out_port_o <= args_i[6][3:0];
                // ttl--
                pkt_hdr_o[14 + 8] -= 1;
                // re-compute checksum
                {pkt_hdr_o[14 + 10], pkt_hdr_o[14 + 11]} <= {`ZERO_BYTE, `ZERO_BYTE};
                cksum_start_o <= `TRUE;
                // src_mac = dst_mac
                for (int i = 0; i < 6; i++) begin
                    pkt_hdr_o[i + 6] <= pkt_hdr_o[i];
                end
                // dst_mac = next_hop_mac
                for (int i = 0; i < 6; i++) begin
                    pkt_hdr_o[i] <= args_i[i];
                end
                state <= STATE_EXEC_CKSUM;
            end
            STATE_EXEC_CKSUM: begin
                if (cksum_ready_i == `TRUE) begin
                    {pkt_hdr_o[14 + 10], pkt_hdr_o[14 + 10]} <= cksum_val_i;
                    ready_o <= `TRUE;
                    state <= STATE_FREE;
                end
            end
            endcase
        end
    end

    cksum cksum0(
        .clk(clk),
        .rst(rst),
        // input
        .start_i(cksum_start_o),
        .pkt_hdr_i(pkt_hdr_o),
        .field_start_i(14),
        .field_len_i(20),
        // output
        .cksum_ready_o(cksum_ready_i),
        .cksum_val_o(cksum_val_i)
    );
endmodule