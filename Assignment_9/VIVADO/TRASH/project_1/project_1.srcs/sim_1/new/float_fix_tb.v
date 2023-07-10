`timescale 1ns / 1ps

module float_fix_tb(
    );
    
  reg clk;
  wire [15:0]m_axis_result_tdata_0;
  wire m_axis_result_tvalid_0;
  reg [31:0]s_axis_a_tdata_0;
  wire s_axis_a_tready_0;

 design_4_wrapper float_fix 
     (.aclk_0(clk),
    .m_axis_result_tdata_0(m_axis_result_tdata_0),
    .m_axis_result_tvalid_0(m_axis_result_tvalid_0),
    .s_axis_a_tdata_0(s_axis_a_tdata_0),
    .s_axis_a_tready_0(s_axis_a_tready_0));

always #5 clk=~clk;

initial
begin 
clk=0;
s_axis_a_tdata_0=3;
end


endmodule
