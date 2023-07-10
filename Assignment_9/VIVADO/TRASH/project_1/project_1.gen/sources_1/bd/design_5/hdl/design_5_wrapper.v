//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Sun Jul  9 17:37:30 2023
//Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
//Command     : generate_target design_5_wrapper.bd
//Design      : design_5_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_5_wrapper
   (N_0,
    clk_0,
    fixed_point_tc_0,
    tlast_0,
    u_0);
  input [7:0]N_0;
  input clk_0;
  output [15:0]fixed_point_tc_0;
  output tlast_0;
  input [7:0]u_0;

  wire [7:0]N_0;
  wire clk_0;
  wire [15:0]fixed_point_tc_0;
  wire tlast_0;
  wire [7:0]u_0;

  design_5 design_5_i
       (.N_0(N_0),
        .clk_0(clk_0),
        .fixed_point_tc_0(fixed_point_tc_0),
        .tlast_0(tlast_0),
        .u_0(u_0));
endmodule
