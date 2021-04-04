`include "def.svh"

module matcher #(
    parameter LOGIC_ENTRY_LEN = 16,
    parameter LOGIC_START_ADDR = 128
) (
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
    // output
    output reg ready_o,
    output reg is_match_o,
    output reg [`BYTE_BUS] flow_val_o [`MAX_VAL_LEN - 1:0],
    // modify
    input wire mod_start_i,
    input wire [3:0] mod_match_hdr_id_i,
    input wire [5:0] mod_match_key_off_i,
    input wire [5:0] mod_match_key_len_i,
    input wire [5:0] mod_match_val_len_i
);

    // table
    reg [3:0] match_hdr_id;
    reg [5:0] match_key_off;
    reg [5:0] match_key_len;
    reg [5:0] match_val_len;

    // load
    reg [`ADDR_BUS] mem_addr;
    int mem_cnt;

    // key
    reg [`BYTE_BUS] key_data [`MAX_HASH_LEN - 1:0];
    reg [`BYTE_BUS] entry_key_data [`MAX_HASH_LEN - 1:0];

    // hash
    reg hash_start;
    wire hash_ready;
    wire [`DATA_BUS] hash_val;
    wire [`QUAD_BUS] hash_key_o;
    assign hash_key_o = {
        key_data[0], key_data[1], key_data[2], key_data[3],
        key_data[4], key_data[5], key_data[6], key_data[7]
    };

    enum {
        STATE_FREE, STATE_HASH, STATE_LOAD_KEY, STATE_LOAD_VAL, STATE_DONE
    } state;

    assign mem_we_o = `FALSE;
    assign mem_addr_o = mem_addr;
    assign mem_width_o = 1;
    assign mem_data_o = `ZERO_WORD;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // mem
            mem_ce_o <= `FALSE;
            // output
            ready_o <= `FALSE;
            is_match_o <= `FALSE;
            for (int i = 0; i < `MAX_VAL_LEN; i++) begin
                flow_val_o[i] = 0;
            end
            // table
            match_hdr_id <= 0;
            match_key_off <= 0;
            match_key_len <= 0;
            match_val_len <= 0;
            // reg
            hash_start <= `FALSE;
            mem_addr <= `ZERO_ADDR;
            mem_cnt <= 0;
            for (int i = 0; i < 8; i = i + 1) begin
                key_data[i] <= `ZERO_BYTE;
                entry_key_data[i] <= `ZERO_BYTE;
            end
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (mod_start_i == `TRUE) begin
                    match_hdr_id <= mod_match_hdr_id_i;
                    match_key_off <= mod_match_key_off_i;
                    match_key_len <= mod_match_key_len_i;
                    match_val_len <= mod_match_val_len_i;
                end else if (start_i == `TRUE) begin
                    // mem
                    mem_ce_o <= `FALSE;
                    // output
                    ready_o <= `FALSE; 
                    is_match_o <= `FALSE;
                    for (int i = 0; i < `MAX_VAL_LEN; i++) begin
                        flow_val_o[i] = 0;
                    end
                    // reg
                    hash_start <= `TRUE;
                    mem_addr <= `ZERO_ADDR;
                    mem_cnt <= 0;
                    for (int i = 0; i < match_key_len; i++) begin
                        key_data[i] <= pkt_hdr_i[parsed_hdrs_i[match_hdr_id] + match_key_off + i];
                    end
                    for (int i = 0; i < 8; i = i + 1) begin
                        entry_key_data[i] <= `ZERO_BYTE;
                    end
                    state <= STATE_HASH;
                end
            end
            STATE_HASH: begin
                if (hash_ready == `TRUE) begin
                    hash_start <= `FALSE;
                    mem_ce_o <= `TRUE;
                    mem_addr <= LOGIC_START_ADDR + hash_val * LOGIC_ENTRY_LEN;
                    mem_cnt <= 0;
                    state <= STATE_LOAD_KEY;
                end
            end
            STATE_LOAD_KEY: begin
                if (mem_cnt == match_key_len) begin
                    if (entry_key_data == key_data) begin
                        // match, load value
                        mem_cnt <= 0;
                        state <= STATE_LOAD_VAL;
                    end else begin
                        // not match, return
                        mem_ce_o <= `FALSE;
                        ready_o <= `TRUE;
                        is_match_o <= `FALSE;
                        state <= STATE_DONE;
                    end
                end else begin
                    entry_key_data[mem_cnt] <= mem_data_i[`BYTE_BUS];
                    mem_addr <= mem_addr + 1;
                    mem_cnt <= mem_cnt + 1;
                end
            end
            STATE_LOAD_VAL: begin
                if (mem_cnt == match_val_len) begin
                    mem_ce_o <= `FALSE;
                    ready_o <= `TRUE;
                    is_match_o <= `TRUE;
                    state <= STATE_DONE;
                end else begin
                    flow_val_o[mem_cnt] <= mem_data_i[`BYTE_BUS];
                    mem_addr <= mem_addr + 1;
                    mem_cnt <= mem_cnt + 1;
                end
            end
            STATE_DONE: begin
                if (start_i == `FALSE) begin
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
        .start_i(hash_start),
        .key_i(hash_key_o),
        .hash_ready_o(hash_ready),
        .hash_val_o(hash_val)
    );

endmodule