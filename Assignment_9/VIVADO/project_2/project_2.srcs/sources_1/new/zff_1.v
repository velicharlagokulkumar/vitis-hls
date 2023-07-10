`timescale 1ns / 1ps
module zff_1(
input aclk,
input aresetn,
input [31:0] u,
input u_valid,
output u_ready,
input [31:0] L,
input L_valid,
output L_ready,
output [31:0] Z,
output Z_valid,
input Z_ready,
output reg tlast
    );
    
    wire [31:0] Fu;
    wire Fu_ready,Fu_valid;
    
    fixed_to_float u_Float(
  .aclk(aclk),                                  // input wire aclk
  .aresetn(aresetn),                            // input wire aresetn
  .s_axis_a_tvalid(u_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(u_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(u),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(Fu_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(Fu_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(Fu)    // output wire [31 : 0] m_axis_result_tdata
);

   wire [31:0] FL;
    wire FL_ready,FL_valid;

    fixed_to_float L_Float(
  .aclk(aclk),                                  // input wire aclk
  .aresetn(aresetn),                            // input wire aresetn
  .s_axis_a_tvalid(L_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(L_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(L),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(FL_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(FL_ready),  // input wire m_axis_result_tready
  .m_axis_result_tdata(FL)    // output wire [31 : 0] m_axis_result_tdata
);

  reg[15:0] n_r=0;
  reg [15:0] n=0;

  always @(posedge aclk)
  begin
  if(n==L)
  begin
  n<=0;
  tlast=1'b1;
  end
  else
  n<=n_r;
  tlast=1'b0;
  end
   
  always@(*)
  begin
  n_r=n+1;
  end

endmodule
