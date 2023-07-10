`timescale 1ns / 1ps
module zff1_tb(
    );
    
 reg aclk;
reg aresetn;
reg [31:0] u;
reg u_valid;
wire u_ready;
reg [31:0] L;
reg L_valid;
wire L_ready;
wire [31:0] Z;
wire Z_valid;
reg Z_ready;
wire tlast;
    
zff_1 in1(
.aclk(aclk),
.aresetn(aresetn),
.u(u),
.u_valid(u_valid),
.u_ready(u_ready),
.L(L),
.L_valid(L_valid),
.L_ready(L_ready),
.Z(Z),
.Z_valid(Z_valid),
.Z_ready(Z_ready),
.tlast(tlast)
    );
    
    
    initial begin
    aclk= 0;
    aresetn=0;
    u=0;
    u_valid=0;
    L=0;
    L_valid=0;
    Z_ready=0;
    end
    
    always #5 aclk=~aclk;
    
   initial begin
   #100 aresetn=1;
     #10 u=25;
      #5 u_valid=1;
   while(u_ready==0)
      #5 u_valid=1;
        #10 u_valid=0;
    end
    
   initial begin
     #110 L=139;
      #5 L_valid=1;
   while(L_ready==0)
      #5 L_valid=1;
        #10 L_valid=0;
        
        #5 Z_ready=1;
        wait(Z_valid==1'b1)
          #5 Z_ready=1'b1;
         #5 Z_ready=1'b0;
    end
    
endmodule
