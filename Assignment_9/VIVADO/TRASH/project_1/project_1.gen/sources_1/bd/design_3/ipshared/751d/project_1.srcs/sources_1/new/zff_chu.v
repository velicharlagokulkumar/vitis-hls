`timescale 1ns / 1ps
module zadoff_chu(
  input clk,
  input [7:0] u,
  input [7:0] N,
  output reg [15:0] angle
);
parameter real PI = 3.14159265358979;
  reg[15:0] n_r=0;
  reg [15:0] n=0;
  
  always @(posedge clk)
  begin
  if(n==N)
  begin
  n<=0;
  angle<=0;
  end
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
end
endmodule
