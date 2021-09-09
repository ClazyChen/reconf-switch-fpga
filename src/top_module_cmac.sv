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
    
    wire            in_s_axis_tvalid;
    wire            in_s_axis_tready;
    wire  [1023:0]  in_s_axis_tdata;
    wire  [127:0]   in_s_axis_tkeep;
    wire            in_s_axis_tlast;
    
    wire            out_m_axis_tvalid;
    wire            out_m_axis_tready;
    wire  [1023:0]  out_m_axis_tdata;
    wire  [127:0]   out_m_axis_tkeep;
    wire            out_m_axis_tlast;

    IPSAPCIE ipsa_pcie (
        .clock           (ap_clk),
        .reset           (ap_rst_n),
        .io_en_in        (ipsa_io_en_in),
        .io_data_in      (ipsa_io_data_in),
        .io_en_out       (ipsa_io_en_out),
        .io_data_out     (ipsa_io_data_out)
    );
    
    axis_dwidth_converter_0 axis_dwidth_converter_0 (
        .aclk            (ap_clk),
        .aresetn         (ap_rst_n),
        .s_axis_tvalid   (s_axis_tvalid),
        .s_axis_tready   (s_axis_tready),
        .s_axis_tdata    (s_axis_tdata),
        .s_axis_tkeep    (s_axis_tkeep),
        .s_axis_tlast    (s_axis_tlast),
        .m_axis_tvalid   (in_s_axis_tvalid),
        .m_axis_tready   (in_s_axis_tready),
        .m_axis_tdata    (in_s_axis_tdata),
        .m_axis_tkeep    (in_s_axis_tkeep),
        .m_axis_tlast    (in_s_axis_tlast)
    );
    
    axis_dwidth_converter_1 axis_dwidth_converter_1 (
        .aclk            (ap_clk),
        .aresetn         (ap_rst_n),
        .s_axis_tvalid   (out_m_axis_tvalid),
        .s_axis_tready   (out_m_axis_tready),
        .s_axis_tdata    (out_m_axis_tdata),
        .s_axis_tkeep    (out_m_axis_tkeep),
        .s_axis_tlast    (out_m_axis_tlast),
        .m_axis_tvalid   (m_axis_tvalid),
        .m_axis_tready   (m_axis_tready),
        .m_axis_tdata    (m_axis_tdata),
        .m_axis_tkeep    (m_axis_tkeep),
        .m_axis_tlast    (m_axis_tlast)
    );

    InAXI in_axi (
        .clock           (ap_clk),
        .reset           (ap_rst_n),
        .s_axis_tvalid   (in_s_axis_tvalid),
        .s_axis_tready   (in_s_axis_tready),
        .s_axis_tdata    (in_s_axis_tdata),
        .s_axis_tkeep    (in_s_axis_tkeep),
        .s_axis_tlast    (in_s_axis_tlast),
        .ipsa_io_en_in   (ipsa_io_en_in),
        .ipsa_io_data_in (ipsa_io_data_in)
    );

    OutAXI out_axi (
        .m_axis_tvalid   (out_m_axis_tvalid),
        .m_axis_tready   (out_m_axis_tready),
        .m_axis_tdata    (out_m_axis_tdata),
        .m_axis_tkeep    (out_m_axis_tkeep),
        .m_axis_tlast    (out_m_axis_tlast),
        .ipsa_io_en_out  (ipsa_io_en_out),
        .ipsa_io_data_out(ipsa_io_data_out)
    );

endmodule