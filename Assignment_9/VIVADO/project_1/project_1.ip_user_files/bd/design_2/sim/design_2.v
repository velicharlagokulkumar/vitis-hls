//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sun Jul  2 06:06:39 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (N_0,
    clk_0,
    t_last_0,
    u_0);
  input [7:0]N_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_2_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  output t_last_0;
  input [7:0]u_0;

  wire [7:0]N_0_1;
  wire clk_0_1;
  wire [7:0]u_0_1;
  wire zadoff_chu_0_t_last;

  assign N_0_1 = N_0[7:0];
  assign clk_0_1 = clk_0;
  assign t_last_0 = zadoff_chu_0_t_last;
  assign u_0_1 = u_0[7:0];
  design_2_zadoff_chu_0_2 zadoff_chu_0
       (.N(N_0_1),
        .clk(clk_0_1),
        .t_last(zadoff_chu_0_t_last),
        .u(u_0_1));
endmodule
