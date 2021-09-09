module InAXI (
    input           clock,
    input           reset,
    input           s_axis_tvalid,
    output          s_axis_tready,
    input [1023:0]  s_axis_tdata,
    input [127:0]   s_axis_tkeep,
    input           s_axis_tlast,
    output          ipsa_io_en_in,
    output [1023:0] ipsa_io_data_in
);
    reg             ready_for_first;
    assign s_axis_tready = 1'h1;
    assign ipsa_io_en_in = ready_for_first ? s_axis_tvalid : 1'h0;
    assign ipsa_io_data_in = s_axis_tdata;
    always @(posedge clock) begin
        if (!reset) begin
            ready_for_first <= 1'h0;
        end else begin
            ready_for_first <= s_axis_tlast;
        end
    end   
endmodule