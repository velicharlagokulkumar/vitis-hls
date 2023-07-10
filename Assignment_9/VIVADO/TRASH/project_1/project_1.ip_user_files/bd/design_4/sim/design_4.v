//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sat Jul  8 16:52:37 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_4.bd
//Design      : design_4
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_4.hwdef" *) 
module design_4
   (aclk_0,
    m_axis_result_tdata_0,
    m_axis_result_tvalid_0,
    s_axis_a_tdata_0,
    s_axis_a_tready_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_0, CLK_DOMAIN design_4_aclk_0, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk_0;
  output [31:0]m_axis_result_tdata_0;
  output m_axis_result_tvalid_0;
  input [31:0]s_axis_a_tdata_0;
  output s_axis_a_tready_0;

  wire aclk_0_1;
  wire [31:0]floating_point_0_m_axis_result_tdata;
  wire floating_point_0_m_axis_result_tvalid;
  wire floating_point_0_s_axis_a_tready;
  wire [31:0]s_axis_a_tdata_0_1;
  wire [0:0]xlconstant_0_dout;

  assign aclk_0_1 = aclk_0;
  assign m_axis_result_tdata_0[31:0] = floating_point_0_m_axis_result_tdata;
  assign m_axis_result_tvalid_0 = floating_point_0_m_axis_result_tvalid;
  assign s_axis_a_tdata_0_1 = s_axis_a_tdata_0[31:0];
  assign s_axis_a_tready_0 = floating_point_0_s_axis_a_tready;
  design_4_floating_point_0_0 floating_point_0
       (.aclk(aclk_0_1),
        .m_axis_result_tdata(floating_point_0_m_axis_result_tdata),
        .m_axis_result_tready(xlconstant_0_dout),
        .m_axis_result_tvalid(floating_point_0_m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata_0_1),
        .s_axis_a_tready(floating_point_0_s_axis_a_tready),
        .s_axis_a_tvalid(xlconstant_0_dout));
  design_4_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
