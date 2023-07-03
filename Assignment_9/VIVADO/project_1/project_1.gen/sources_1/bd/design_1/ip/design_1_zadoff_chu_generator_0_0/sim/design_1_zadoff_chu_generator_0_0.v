// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:zadoff_chu_generator_hls:1.0
// IP Revision: 2113099589

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_zadoff_chu_generator_0_0 (
  ap_clk,
  ap_rst_n,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  out_stream_TVALID,
  out_stream_TREADY,
  out_stream_TDATA,
  length_r,
  u,
  tlast_TVALID,
  tlast_TREADY,
  tlast_TDATA
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF out_stream:tlast, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TVALID" *)
output wire out_stream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TREADY" *)
input wire out_stream_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_stream, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TDATA" *)
output wire [63 : 0] out_stream_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME length_r, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 length_r DATA" *)
input wire [31 : 0] length_r;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME u, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 u DATA" *)
input wire [31 : 0] u;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tlast TVALID" *)
output wire tlast_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tlast TREADY" *)
input wire tlast_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tlast, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tlast TDATA" *)
output wire [7 : 0] tlast_TDATA;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  zadoff_chu_generator_hls inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .out_stream_TVALID(out_stream_TVALID),
    .out_stream_TREADY(out_stream_TREADY),
    .out_stream_TDATA(out_stream_TDATA),
    .length_r(length_r),
    .u(u),
    .tlast_TVALID(tlast_TVALID),
    .tlast_TREADY(tlast_TREADY),
    .tlast_TDATA(tlast_TDATA)
  );
endmodule
