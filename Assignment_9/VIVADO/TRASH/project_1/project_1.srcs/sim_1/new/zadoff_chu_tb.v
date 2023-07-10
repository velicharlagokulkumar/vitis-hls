`timescale 1ns / 1ps
module zadoff_chu_tb(
    );

reg clk;
reg [31:0]length_r_0;
wire [63:0]out_stream_TDATA_0;
wire out_stream_TVALID_0;
reg [31:0]u_0; 
wire tlast_TVALID_0;  
   
  
design_1_wrapper in1 (.ap_clk_0(clk),
    .length_r_0(length_r_0),
    .out_stream_TDATA_0(out_stream_TDATA_0),
    .out_stream_TVALID_0(out_stream_TVALID_0),
    .tlast_TVALID_0(tlast_TVALID_0),
    .u_0(u_0));

always #5 clk=~clk;

initial
begin 
clk=0;
//ap_rst_n_0=1;
length_r_0=139;
u_0=25;
end
endmodule
