`timescale 1ns / 1ps
module zff_post_tb(
    );
 
  reg [7:0]N_0;
  wire [31:0]Z_0;
  reg clk;
  reg [7:0]u_0;
    
design_1_wrapper post_verification (
   .N_0(N_0),
    .Z_0(Z_0),
    .clk_0(clk),
    .u_0(u_0));
 always #5 clk=~clk;

initial
begin 
clk=0;
//ap_rst_n_0=1;
N_0=139;
u_0=25;
end

endmodule
