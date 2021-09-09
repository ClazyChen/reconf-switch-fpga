module OutAXI (
    output           m_axis_tvalid,
    input            m_axis_tready,
    output [1023:0]  m_axis_tdata,
    output [127:0]   m_axis_tkeep,
    output           m_axis_tlast,
    input            ipsa_io_en_out,
    input  [1023:0]  ipsa_io_data_out
);
    wire             valid;
    assign valid = ipsa_io_en_out & m_axis_tready;
    assign m_axis_tvalid = valid;
    assign m_axis_tdata  = ipsa_io_data_out;
    assign m_axis_tkeep  = valid ? 128'h0 : ~ 128'h0;
    assign m_axis_tlast  = valid;
endmodule