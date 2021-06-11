`include "def.svh"

module fixed_matcher (
    input wire clk,
    input wire rst,
    input wire start_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    input wire [`DATA_BUS] parsed_hdrs_i [`NUM_HEADERS - 1:0],
    // mem
    output reg mem_ce_o,
    output reg mem_we_o,
    output reg [`ADDR_BUS] mem_addr_o,
    output reg [3:0] mem_width_o,
    output reg [`DATA_BUS] mem_data_o,
    input wire [`DATA_BUS] mem_data_i,
    input wire mem_ready_i,
    // output
    output reg ready_o,
    output reg is_match_o,
    output reg [`BYTE_BUS] flow_val_o [`MAX_VAL_LEN - 1:0]
);

    // load
    int mem_cnt;

    // key
    reg [`BYTE_BUS] key_data [7:0];     // format: [ tag(1) | zero(1) | match_key(6) ]
    reg [`BYTE_BUS] entry_key_data [7:0];

    // hash
    reg hash_start_i;
    wire hash_ready_i;
    wire [`DATA_BUS] hash_val_i;
    wire [`QUAD_BUS] hash_key_o;
    assign hash_key_o = {
        key_data[0], key_data[1], key_data[2], key_data[3],
        key_data[4], key_data[5], key_data[6], key_data[7]
    };

    enum {
        STATE_FREE, STATE_HASH, STATE_HASH_WAIT, STATE_LOAD_KEY, STATE_LOAD_VAL, STATE_STORE_VAL
    } state;

    assign mem_width_o = 4;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // mem
            mem_ce_o <= `FALSE;
            mem_we_o <= `FALSE;
            mem_data_o <= `ZERO_WORD;
            // output
            ready_o <= `FALSE;
            is_match_o <= `FALSE;
            for (int i = 0; i < `MAX_VAL_LEN; i++) begin
                flow_val_o[i] = 0;
            end
            // reg
            hash_start_i <= `FALSE;
            mem_addr_o <= `ZERO_ADDR;
            mem_cnt <= 0;
            for (int i = 2; i < 8; i++) begin
                key_data[i] <= `ZERO_BYTE;
            end
            for (int i = 0; i < 8; i++) begin
                entry_key_data[i] <= `ZERO_BYTE;
            end
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (start_i == `TRUE) begin
                    // mem
                    mem_ce_o <= `FALSE;
                    // output
                    ready_o <= `FALSE; 
                    is_match_o <= `FALSE;
                    for (int i = 0; i < `MAX_VAL_LEN; i++) begin
                        flow_val_o[i] = 0;
                    end
                    // reg
                    hash_start_i <= `TRUE;
                    mem_addr_o <= `ZERO_ADDR;
                    mem_cnt <= 0;
                    {key_data[0], key_data[1], key_data[2], key_data[3]} <= {
                        pkt_hdr_i[14 + 16], pkt_hdr_i[14 + 17], pkt_hdr_i[14 + 18], pkt_hdr_i[14 + 19]
                    };
                    for (int i = 0; i < 8; i++) begin
                        entry_key_data[i] <= `ZERO_BYTE;
                    end
                    state <= STATE_HASH;
                end
            end
            STATE_HASH: begin
                hash_start_i <= `FALSE;
                state <= STATE_HASH_WAIT;
            end
            STATE_HASH_WAIT: begin
                if (hash_ready_i == `TRUE) begin
                    mem_ce_o <= `TRUE;
                    mem_we_o <= `FALSE;
                    mem_addr_o <= 0 + hash_val_i * 16;
                    mem_cnt <= 0;
                    state <= STATE_LOAD_KEY;
                end
            end
            STATE_LOAD_KEY: begin
                if (mem_cnt < 4) begin
                    // loading key
                    if (mem_ready_i == `TRUE) begin
                        {entry_key_data[mem_cnt], entry_key_data[mem_cnt + 1],
                        entry_key_data[mem_cnt + 2], entry_key_data[mem_cnt + 3]} <= mem_data_i;
                        mem_addr_o <= mem_addr_o + 4;
                        mem_cnt <= mem_cnt + 4;
                    end
                end else begin
                    // load key done
                    if (entry_key_data == key_data) begin
                        // match, load value
                        if (mem_ready_i == `TRUE) begin
                            {flow_val_o[0], flow_val_o[1], flow_val_o[2], flow_val_o[3]} <= mem_data_i;
                            mem_addr_o <= mem_addr_o + 4;
                            mem_cnt <= 4;
                            state <= STATE_LOAD_VAL;
                        end
                    end else begin
                        // not match, wait & return
                        if (mem_ready_i == `TRUE) begin
                            mem_ce_o <= `FALSE;
                            ready_o <= `TRUE;
                            is_match_o <= `FALSE;
                            state <= STATE_FREE;
                        end
                    end
                end
            end
            STATE_LOAD_VAL: begin
                if (mem_cnt != 12) begin
                    // loading
                    if (mem_ready_i == `TRUE) begin
                        {flow_val_o[mem_cnt], flow_val_o[mem_cnt + 1],
                        flow_val_o[mem_cnt + 2], flow_val_o[mem_cnt + 3]} <= mem_data_i;
                        mem_addr_o <= mem_addr_o + 4;
                        mem_cnt <= mem_cnt + 4;
                    end
                end else begin
                    // load done
                    mem_ce_o <= `FALSE;
                    ready_o <= `TRUE;
                    is_match_o <= `TRUE;
                    state <= STATE_FREE;
                end
            end
            STATE_STORE_VAL: begin
                if (mem_ready_i == `TRUE) begin
                    mem_ce_o <= `FALSE;
                    ready_o <= `TRUE;
                    is_match_o <= `TRUE;
                    state <= STATE_FREE;
                end
            end
            default: begin
                state <= STATE_FREE;
            end
            endcase
        end
    end

    hash hash0(
        .clk(clk),
        .rst(rst),
        .start_i(hash_start_i),
        .key_i(hash_key_o),
        .hash_ready_o(hash_ready_i),
        .hash_val_o(hash_val_i)
    );

endmodule