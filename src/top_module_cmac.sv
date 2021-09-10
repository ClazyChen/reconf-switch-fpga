`timescale 1ps / 1ps

module top_module_cmac (
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
    wire            ipsa_io_en_in;
    wire            ipsa_io_en_out;
    wire  [1023:0]  ipsa_io_data_in;
    wire  [1023:0]  ipsa_io_data_out;

    IPSAPCIE ipsa_pcie (
        .clock           (ap_clk),
        .reset           (ap_rst_n),
        .io_en_in        (ipsa_io_en_in),
        .io_data_in      (ipsa_io_data_in),
        .io_en_out       (ipsa_io_en_out),
        .io_data_out     (ipsa_io_data_out)
    );

    InAXI in_axi (
        .clock           (ap_clk),
        .reset           (ap_rst_n),
        .io_s_axis_tvalid(s_axis_tvalid),
        .io_s_axis_tready(s_axis_tready),
        .io_s_axis_tdata (s_axis_tdata),
        .io_s_axis_tkeep (s_axis_tkeep),
        .io_s_axis_tlast (s_axis_tlast),
        .io_ipsa_en_in   (ipsa_io_en_in),
        .io_ipsa_data_in (ipsa_io_data_in)
    );

    OutAXI out_axi (
        .clock           (ap_clk),
        .reset           (ap_rst_n),
        .io_m_axis_tvalid(m_axis_tvalid),
        .io_m_axis_tready(m_axis_tready),
        .io_m_axis_tdata (m_axis_tdata),
        .io_m_axis_tkeep (m_axis_tkeep),
        .io_m_axis_tlast (m_axis_tlast),
        .io_ipsa_en_out  (ipsa_io_en_out),
        .io_ipsa_data_out(ipsa_io_data_out)
    );

endmodule