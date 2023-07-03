`timescale 1 ps / 1 ps

module design_1_wrapper
   (ap_clk_0,
    ap_rst_n_0,
    m_axis_data_tdata_0,
    m_axis_data_tlast_0,
    m_axis_data_tvalid_0,
    s_axis_config_tready_0,
    s_axis_data_tready_0);
  input ap_clk_0;
  input ap_rst_n_0;
  output [63:0]m_axis_data_tdata_0;
  output m_axis_data_tlast_0;
  output m_axis_data_tvalid_0;
  output s_axis_config_tready_0;
  output s_axis_data_tready_0;

  wire ap_clk_0;
  wire ap_rst_n_0;
  wire [63:0]m_axis_data_tdata_0;
  wire m_axis_data_tlast_0;
  wire m_axis_data_tvalid_0;
  wire s_axis_config_tready_0;
  wire s_axis_data_tready_0;

  design_1 design_1_i
       (.ap_clk_0(ap_clk_0),
        .ap_rst_n_0(ap_rst_n_0),
        .m_axis_data_tdata_0(m_axis_data_tdata_0),
        .m_axis_data_tlast_0(m_axis_data_tlast_0),
        .m_axis_data_tvalid_0(m_axis_data_tvalid_0),
        .s_axis_config_tready_0(s_axis_config_tready_0),
        .s_axis_data_tready_0(s_axis_data_tready_0));
endmodule
