`timescale 1ns / 1ps
module zadoff_chu(
  input clk,
  input [7:0] u,
  input [7:0] N,
  output reg t_last
);
parameter real PI = 3.14159265358979;
  real angle;
  real real_x;
  real imag_x;
  reg[15:0] n_r=0;
  reg [15:0] n=0;
   reg [15:0] count=0;
  
  always @(posedge clk)
  begin
  if(n==N)
  n<=0;
  else
  n<=n_r;
  end
   
  always@(*)
  begin
  n_r=n+1;
  end
  
    always @(posedge clk)
    begin
    angle = (PI * n * (n + 1)* u) / N;
    real_x <= $cos(angle);
    imag_x <= -$sin(angle);
    
    if(count==N)
    begin
    t_last<=1'b1;
    count<=1'b0;
    real_x<=1'b0;
    imag_x<=1'b0;
    end
    else
    begin
    t_last=1'b0;
    end
    count = count+1'b1;
    end
endmodule
