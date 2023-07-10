`timescale 1ns / 1ps
module zadoff_chu(
  input clk,
  input [7:0] u,
  input [7:0] N,
  output reg [9:0] fixed_point_tc
);
  parameter real PI = 3.14159265358979;

  reg[15:0] n_r=0;
  reg [15:0] n=0;
  real angle2;
  integer quotient;
  real quotient2;
  real reminder;
  real reminder2;
  real c_t;
  real s_t;
  real temp;
  real temp2;
  
  reg [1:0] ip=0; //integer part
  reg  fp[6:0]; //fractional part
  real fractional_part;
  reg [4:0]count;
  reg [4:0] NZ=6;
  reg [6:0] fPP=7'b0;
    reg [9:0] fixed_point;

  
   // parameter integer_bits = 2;
  //parameter fractional_bits = 12;
  
  // Calculate the range and precision
  //localparam range_val = 2 ** (integer_bits - 1) - 1;
  //localparam precision = 1.0 / (2 ** fractional_bits);
  
 
  always @(posedge clk)
  begin
  if(n==N)
  begin
  n<=0;
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
    angle2 = (PI * n * (n + 1)* u) / N;
    quotient = (angle2) / (2*PI);
    quotient2=quotient*(2*PI);
    reminder=angle2-quotient2;
    reminder2=reminder;
    c_t=$cos(reminder);
    s_t=-$sin(reminder); 
    end
    
     // Define the number of bits
    
  // Scale the real number
  reg signed [15:0] scaled_num;

  // Check the sign
  reg sign_bit=0;
   reg sign_bit2=0;
      
  always @*
  begin
    sign_bit = (reminder <=0) ? 1 : 0;

    if(reminder>=0&&reminder<1)
    ip=2'b00;
    else if(reminder>1&&reminder<2)
    ip=2'b01;
    else if(reminder>2&&reminder<3)
    ip=2'b10;
    else if(reminder>3&&reminder<4)
    ip=2'b11;
    else if(reminder<0&&reminder>-1)
    ip=2'b00;
    else if(reminder<-1&&reminder>-2)
    ip=2'b01;
    else if(reminder<-2&&reminder>-3)
    ip=2'b10;
    else //if (reminder<-3&&reminder>-2)
    ip=2'b11;
    
    end
    
     always @(reminder2)
     begin
      reminder2 = (reminder2 < 0) ? -reminder2 : reminder2;
      fractional_part = reminder2 - ip;
      temp=fractional_part;
 
  
       for(count=0;count<=NZ;count=count+1) begin
        temp=temp*2;
           if (temp >= 1) begin
        fp[NZ-count] = 1'b1;
        temp = temp - 1;
        end
      else begin
          fp[NZ-count] = 1'b0;
          temp=temp;
          end
         end
     end
     
       always @* begin
    fPP = {fp[6],fp[5],fp[4],fp[3], fp[2], fp[1], fp[0]};
  end

    
  // Convert the scaled number to fixed-point binary representation

  always @*
  begin
    fixed_point = {1'b0,ip,fPP};
    if(sign_bit)
    fixed_point_tc = ~(fixed_point)+1;
    else
   fixed_point_tc= fixed_point;
end

endmodule
