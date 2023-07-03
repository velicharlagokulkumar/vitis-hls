//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri May 26 18:45:42 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (ap_clk_0,
    ap_rst_n_0,
    m_axis_data_tdata_0,
    m_axis_data_tlast_0,
    m_axis_data_tvalid_0,
    s_axis_config_tready_0,
    s_axis_data_tready_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK_0, ASSOCIATED_RESET ap_rst_n_0, CLK_DOMAIN design_1_ap_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n_0;
  output [63:0]m_axis_data_tdata_0;
  output m_axis_data_tlast_0;
  output m_axis_data_tvalid_0;
  output s_axis_config_tready_0;
  output s_axis_data_tready_0;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [63:0]cyclic_prefix_removal_0_out_samples_TDATA;
  wire cyclic_prefix_removal_0_out_samples_TVALID;
  wire cyclic_prefix_removal_0_t_last_write;
  wire [63:0]data_generator_0_gout_TDATA;
  wire data_generator_0_gout_TVALID;
  wire [63:0]xfft_0_m_axis_data_tdata;
  wire xfft_0_m_axis_data_tlast;
  wire xfft_0_m_axis_data_tvalid;
  wire xfft_0_s_axis_config_tready;
  wire xfft_0_s_axis_data_tready;
  wire [0:0]xlconstant_0_dout;
  wire [15:0]xlconstant_1_dout;

  assign ap_clk_0_1 = ap_clk_0;
  assign ap_rst_n_0_1 = ap_rst_n_0;
  assign m_axis_data_tdata_0[63:0] = xfft_0_m_axis_data_tdata;
  assign m_axis_data_tlast_0 = xfft_0_m_axis_data_tlast;
  assign m_axis_data_tvalid_0 = xfft_0_m_axis_data_tvalid;
  assign s_axis_config_tready_0 = xfft_0_s_axis_config_tready;
  assign s_axis_data_tready_0 = xfft_0_s_axis_data_tready;
  design_1_cyclic_prefix_removal_0_0 cyclic_prefix_removal_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .ap_start(xlconstant_0_dout),
        .in_samples_TDATA(data_generator_0_gout_TDATA),
        .in_samples_TVALID(data_generator_0_gout_TVALID),
        .out_samples_TDATA(cyclic_prefix_removal_0_out_samples_TDATA),
        .out_samples_TREADY(xlconstant_0_dout),
        .out_samples_TVALID(cyclic_prefix_removal_0_out_samples_TVALID),
        .t_last_full_n(xlconstant_0_dout),
        .t_last_write(cyclic_prefix_removal_0_t_last_write));
  design_1_data_generator_0_0 data_generator_0
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .ap_start(xlconstant_0_dout),
        .gout_TDATA(data_generator_0_gout_TDATA),
        .gout_TREADY(xlconstant_0_dout),
        .gout_TVALID(data_generator_0_gout_TVALID));
  design_1_xfft_0_0 xfft_0
       (.aclk(ap_clk_0_1),
        .aresetn(ap_rst_n_0_1),
        .m_axis_data_tdata(xfft_0_m_axis_data_tdata),
        .m_axis_data_tlast(xfft_0_m_axis_data_tlast),
        .m_axis_data_tready(xlconstant_0_dout),
        .m_axis_data_tvalid(xfft_0_m_axis_data_tvalid),
        .s_axis_config_tdata(xlconstant_1_dout),
        .s_axis_config_tready(xfft_0_s_axis_config_tready),
        .s_axis_config_tvalid(xlconstant_0_dout),
        .s_axis_data_tdata(cyclic_prefix_removal_0_out_samples_TDATA),
        .s_axis_data_tlast(cyclic_prefix_removal_0_t_last_write),
        .s_axis_data_tready(xfft_0_s_axis_data_tready),
        .s_axis_data_tvalid(cyclic_prefix_removal_0_out_samples_TVALID));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
