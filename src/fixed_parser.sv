`include "def.svh"

module fixed_parser(
    input wire clk,
    input wire rst,
    input wire start_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    // output
    output reg ready_o,
    output reg [`DATA_BUS] parsed_hdrs_o [`NUM_HEADERS - 1:0]
);

    enum {
        STATE_FREE, STATE_PARSING
    } state;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // output
            ready_o <= `FALSE;
            parsed_hdrs_o <= {`NO_HEADER, `NO_HEADER, `NO_HEADER};
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (start_i == `TRUE) begin
                    // output
                    ready_o <= `FALSE;
                    parsed_hdrs_o <= {`NO_HEADER, `NO_HEADER, `NO_HEADER};
                    // reg
                    state <= STATE_PARSING;
                end
            end
            STATE_PARSING: begin
                parsed_hdrs_o[0] = 0;
                if ({pkt_hdr_i[12], pkt_hdr_i[13]} == 32'h0800) begin
                    parsed_hdrs_o[1] = 14;
                end else begin
                    parsed_hdrs_o[1] = `NO_HEADER;
                end
                ready_o <= `TRUE;
                state <= STATE_FREE;
            end
            default: begin
                state <= STATE_FREE;
            end
            endcase
        end
    end

endmodule
