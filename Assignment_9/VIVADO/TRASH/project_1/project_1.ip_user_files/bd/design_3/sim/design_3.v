//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sun Jul  9 17:14:19 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_3.bd
//Design      : design_3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_3.hwdef" *) 
module design_3
   (N_0,
    clk_0,
    m_axis_dout_tdata_0,
    m_axis_dout_tvalid_0,
    s_axis_phase_tready_0,
    u_0);
  input [7:0]N_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_3_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  output [31:0]m_axis_dout_tdata_0;
  output m_axis_dout_tvalid_0;
  output s_axis_phase_tready_0;
  input [7:0]u_0;

  wire [7:0]N_0_1;
  wire clk_0_1;
  wire [31:0]cordic_0_m_axis_dout_tdata;
  wire cordic_0_m_axis_dout_tvalid;
  wire cordic_0_s_axis_phase_tready;
  wire [7:0]u_0_1;
  wire [0:0]xlconstant_0_dout;
  wire [9:0]zadoff_chu_0_angle;

  assign N_0_1 = N_0[7:0];
  assign clk_0_1 = clk_0;
  assign m_axis_dout_tdata_0[31:0] = cordic_0_m_axis_dout_tdata;
  assign m_axis_dout_tvalid_0 = cordic_0_m_axis_dout_tvalid;
  assign s_axis_phase_tready_0 = cordic_0_s_axis_phase_tready;
  assign u_0_1 = u_0[7:0];
  design_3_cordic_0_0 cordic_0
       (.aclk(clk_0_1),
        .m_axis_dout_tdata(cordic_0_m_axis_dout_tdata),
        .m_axis_dout_tvalid(cordic_0_m_axis_dout_tvalid),
        .s_axis_phase_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,zadoff_chu_0_angle}),
        .s_axis_phase_tready(cordic_0_s_axis_phase_tready),
        .s_axis_phase_tvalid(xlconstant_0_dout));
  design_3_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_3_zadoff_chu_0_0 zadoff_chu_0
       (.N(N_0_1),
        .clk(clk_0_1),
        .fixed_point_tc(zadoff_chu_0_angle),
        .u(u_0_1));
endmodule
