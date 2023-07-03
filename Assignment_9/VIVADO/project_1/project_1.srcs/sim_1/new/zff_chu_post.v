`timescale 1ns / 1ps
module zff_chu_post(
    );
    
  reg [7:0]N_0;
  reg clk;
  wire t_last_0;
  reg [7:0]u_0;
    
    
design_2_wrapper in2
   (.N_0(N_0),
    .clk_0(clk),
    .t_last_0(t_last_0),
    .u_0(t_last_0));

always #5 clk=~clk;

initial
begin 
clk=0;
//ap_rst_n_0=1;
N_0=139;
u_0=25;
end
endmodule
