#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("out_stream_TDATA", 64, hls_out, 0, "axis", "out_data", 1),
	Port_Property("out_stream_TVALID", 1, hls_out, 0, "axis", "out_vld", 1),
	Port_Property("out_stream_TREADY", 1, hls_in, 0, "axis", "out_acc", 1),
	Port_Property("length_r", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("u", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("tlast_TDATA", 8, hls_out, 3, "axis", "out_data", 1),
	Port_Property("tlast_TVALID", 1, hls_out, 3, "axis", "out_vld", 1),
	Port_Property("tlast_TREADY", 1, hls_in, 3, "axis", "out_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "zadoff_chu_generator_hls";
