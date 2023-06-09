# *******************************************************************************
# Vendor: Xilinx 
# Associated Filename: run_vhls.tcl
# Purpose: Tcl commands to setup Vivado HLS tutorial example
# Device: All 
# Revision History: March 31, 2013 - initial release
#                                                 
# *******************************************************************************
# Copyright (C) 2013 XILINX, Inc. 
# 
# This file contains confidential and proprietary information of Xilinx, Inc. and 
# is protected under U.S. and international copyright and other intellectual 
# property laws.
# 
# DISCLAIMER
# This disclaimer is not a license and does not grant any rights to the materials 
# distributed herewith. Except as otherwise provided in a valid license issued to 
# you by Xilinx, and to the maximum extent permitted by applicable law: 
# (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX 
# HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
# INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
# FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether 
# in contract or tort, including negligence, or under any other theory of 
# liability) for any loss or damage of any kind or nature related to, arising under 
# or in connection with these materials, including for any direct, or any indirect, 
# special, incidental, or consequential loss or damage (including loss of data, 
# profits, goodwill, or any type of loss or damage suffered as a result of any 
# action brought by a third party) even if such damage or loss was reasonably 
# foreseeable or Xilinx had been advised of the possibility of the same.
# 
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-safe, or for use in any 
# application requiring fail-safe performance, such as life-support or safety 
# devices or systems, Class III medical devices, nuclear facilities, applications 
# related to the deployment of airbags, or any other applications that could lead 
# to death, personal injury, or severe property or environmental damage 
# (individually and collectively, "Critical Applications"). Customer assumes the 
# sole risk and liability of any use of Xilinx products in Critical Applications, 
# subject only to applicable laws and regulations governing limitations on product 
# liability. 
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
# ALL TIMES.

set run_frontend_prj 1
set run_backend_prj  1
set run_csim         1
set run_cosim        1

set part {xc7z020clg484-1}

# ****************************************************************************
# Frontend project
# ****************************************************************************
if { $run_frontend_prj } {
   open_project fe_vhls_prj

   set_top hls_real2xfft

   add_files real2xfft.cpp
   add_files -tb xfft2real.cpp
   add_files -tb hls_realfft_test.cpp

   if { $run_csim } {
      open_solution "IPXACTExport"
      set_part $part
      create_clock -period 4

      csim_design -clean
   }

   open_solution "IPXACTExport"
   set_part $part
   create_clock -period 4

   csynth_design
   if {$run_cosim} {
      cosim_design -trace_level all -rtl verilog
   }
   export_design
}
# ****************************************************************************
# Backend project
# ****************************************************************************
if { $run_backend_prj } {
   open_project be_vhls_prj

   set_top hls_xfft2real

   add_files xfft2real.cpp
   add_files -tb real2xfft.cpp
   add_files -tb hls_realfft_test.cpp

   open_solution "IPXACTExport"
   set_part  $part
   create_clock -period 4

   csynth_design
   export_design
}

exit

