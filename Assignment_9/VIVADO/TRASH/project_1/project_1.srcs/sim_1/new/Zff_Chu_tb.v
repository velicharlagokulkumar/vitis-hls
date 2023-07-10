`timescale 1ns / 1ps
module Zff_Chu_tb(
    ); 
  
  reg clk;
  wire [31:0]m_axis_dout_tdata_0;
  wire m_axis_dout_tlast_0;
  wire m_axis_dout_tvalid_0;
  reg [15:0]s_axis_phase_tdata_0;
  reg s_axis_phase_tlast_0;
  wire s_axis_phase_tready_0;

     
design_2_wrapper cordic_test
   (.aclk_0(clk),
    .m_axis_dout_tdata_0(m_axis_dout_tdata_0),
    .m_axis_dout_tlast_0(m_axis_dout_tlast_0),
    .m_axis_dout_tvalid_0(m_axis_dout_tvalid_0),
    .s_axis_phase_tdata_0(s_axis_phase_tdata_0),
    .s_axis_phase_tlast_0(s_axis_phase_tlast_0),
    .s_axis_phase_tready_0(s_axis_phase_tready_0));

    initial
    begin
    clk=0;
    end
    
 always #5 clk=~clk; 
    
    initial
    begin
     s_axis_phase_tdata_0=10'b0001100100;
    end
    
endmodule
