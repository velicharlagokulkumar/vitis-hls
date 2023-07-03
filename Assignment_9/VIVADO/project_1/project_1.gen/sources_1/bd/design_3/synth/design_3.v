//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sat Jul  1 18:46:27 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_3.bd
//Design      : design_3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_3.hwdef" *) 
module design_3
   (N_0_0,
    clk_0_0,
    t_last_0_0,
    u_0_0);
  input [7:0]N_0_0;
  input clk_0_0;
  output t_last_0_0;
  input [7:0]u_0_0;

  wire [7:0]N_0_0_1;
  wire clk_0_0_1;
  wire design_2_wrapper_0_t_last_0;
  wire [7:0]u_0_0_1;

  assign N_0_0_1 = N_0_0[7:0];
  assign clk_0_0_1 = clk_0_0;
  assign t_last_0_0 = design_2_wrapper_0_t_last_0;
  assign u_0_0_1 = u_0_0[7:0];
  design_3_design_2_wrapper_0_0 design_2_wrapper_0
       (.N_0(N_0_0_1),
        .clk_0(clk_0_0_1),
        .t_last_0(design_2_wrapper_0_t_last_0),
        .u_0(u_0_0_1));
endmodule
