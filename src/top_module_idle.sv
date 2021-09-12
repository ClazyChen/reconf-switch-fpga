`timescale 1ps / 1ps

module top_module_idle (
    input           ap_clk,
    input           ap_rst_n,
    input           s_axis_tvalid,
    output          s_axis_tready,
    input [511:0]   s_axis_tdata,
    input [63:0]    s_axis_tkeep,
    input           s_axis_tlast,
    output          m_axis_tvalid,
    input           m_axis_tready,
    output [511:0]  m_axis_tdata,
    output [63:0]   m_axis_tkeep,
    output          m_axis_tlast
);
    AXISIdle axis_idle (
        .clock (ap_clk),
        .reset (ap_rst_n),
        .io_s_axis_tvalid (s_axis_tvalid),
        .io_s_axis_tdata (s_axis_tdata),
        .io_s_axis_tkeep (s_axis_tkeep),
        .io_s_axis_tlast (s_axis_tlast),
        .io_s_axis_tready(s_axis_tready),
        .io_m_axis_tready(m_axis_tready),
        .io_m_axis_tvalid(m_axis_tvalid),
        .io_m_axis_tkeep (m_axis_tkeep),
        .io_m_axis_tlast (m_axis_tlast),
        .io_m_axis_tdata (m_axis_tdata)
    );
endmodule