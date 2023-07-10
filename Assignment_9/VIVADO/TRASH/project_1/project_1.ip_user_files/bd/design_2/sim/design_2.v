//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Jul  6 00:06:18 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (aclk_0,
    m_axis_dout_tdata_0,
    m_axis_dout_tlast_0,
    m_axis_dout_tvalid_0,
    s_axis_phase_tdata_0,
    s_axis_phase_tlast_0,
    s_axis_phase_tready_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_0, CLK_DOMAIN design_2_aclk_0, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk_0;
  output [31:0]m_axis_dout_tdata_0;
  output m_axis_dout_tlast_0;
  output m_axis_dout_tvalid_0;
  input [15:0]s_axis_phase_tdata_0;
  input s_axis_phase_tlast_0;
  output s_axis_phase_tready_0;

  wire aclk_0_1;
  wire [31:0]cordic_0_m_axis_dout_tdata;
  wire cordic_0_m_axis_dout_tlast;
  wire cordic_0_m_axis_dout_tvalid;
  wire cordic_0_s_axis_phase_tready;
  wire [15:0]s_axis_phase_tdata_0_1;
  wire s_axis_phase_tlast_0_1;
  wire [0:0]xlconstant_0_dout;

  assign aclk_0_1 = aclk_0;
  assign m_axis_dout_tdata_0[31:0] = cordic_0_m_axis_dout_tdata;
  assign m_axis_dout_tlast_0 = cordic_0_m_axis_dout_tlast;
  assign m_axis_dout_tvalid_0 = cordic_0_m_axis_dout_tvalid;
  assign s_axis_phase_tdata_0_1 = s_axis_phase_tdata_0[15:0];
  assign s_axis_phase_tlast_0_1 = s_axis_phase_tlast_0;
  assign s_axis_phase_tready_0 = cordic_0_s_axis_phase_tready;
  design_2_cordic_0_0 cordic_0
       (.aclk(aclk_0_1),
        .m_axis_dout_tdata(cordic_0_m_axis_dout_tdata),
        .m_axis_dout_tlast(cordic_0_m_axis_dout_tlast),
        .m_axis_dout_tvalid(cordic_0_m_axis_dout_tvalid),
        .s_axis_phase_tdata(s_axis_phase_tdata_0_1),
        .s_axis_phase_tlast(s_axis_phase_tlast_0_1),
        .s_axis_phase_tready(cordic_0_s_axis_phase_tready),
        .s_axis_phase_tvalid(xlconstant_0_dout));
  design_2_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
