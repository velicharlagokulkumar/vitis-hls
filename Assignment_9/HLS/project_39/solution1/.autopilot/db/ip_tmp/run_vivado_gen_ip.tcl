create_project prj -part xczu7ev-ffvc1156-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/velic/OneDrive/Desktop/vitis-hls/Assignment_9/HLS/project_39/solution1/syn/verilog/zadoff_chu_generator_hls_ddiv_64ns_64ns_64_22_no_dsp_1_ip.tcl"
source "C:/Users/velic/OneDrive/Desktop/vitis-hls/Assignment_9/HLS/project_39/solution1/syn/verilog/zadoff_chu_generator_hls_dmul_64ns_64ns_64_5_max_dsp_1_ip.tcl"
source "C:/Users/velic/OneDrive/Desktop/vitis-hls/Assignment_9/HLS/project_39/solution1/syn/verilog/zadoff_chu_generator_hls_fptrunc_64ns_32_2_no_dsp_1_ip.tcl"
source "C:/Users/velic/OneDrive/Desktop/vitis-hls/Assignment_9/HLS/project_39/solution1/syn/verilog/zadoff_chu_generator_hls_sitodp_32ns_64_4_no_dsp_1_ip.tcl"
