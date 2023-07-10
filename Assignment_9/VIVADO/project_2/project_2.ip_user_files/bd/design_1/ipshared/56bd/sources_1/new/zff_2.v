`timescale 1ns / 1ps
module zadoff_chu(
  input clk,
  input [7:0] u,
  input [7:0] N,
  output [31 :0] Z
);

  reg[15:0] n_r=0;
  reg [15:0] n=0;
  reg [31:0] angle3;
 
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
    //angle2 = (PI * n * (n + 1)* u) / N;
    angle3= n*(n + 1)*u; 
    end
    
    wire s_axis_a_tready,m_axis_result_tvalid;
    wire [31 : 0] m_axis_result_tdata;
    
    fixed_to_float angle3_fixed(
  .aclk(clk),                                  // input wire aclk
  .aresetn(1'b1),                            // input wire aresetn
  .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(s_axis_a_tready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(angle3),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(m_axis_result_tvalid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(1'b1),  // input wire m_axis_result_tready
  .m_axis_result_tdata(m_axis_result_tdata)    // output wire [31 : 0] m_axis_result_tdata
);

  wire [31 : 0] mul_tdata;
  wire mul_a_ready,mul_b_ready,mul_tvalid;
  
  float_multi multipy_pi (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(m_axis_result_tvalid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(mul_a_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(m_axis_result_tdata),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
  .s_axis_b_tready(mul_b_ready),            // output wire s_axis_b_tready
  .s_axis_b_tdata(32'b01000000010010010000111111011010),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(mul_tvalid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(1'b1),  // input wire m_axis_result_tready
  .m_axis_result_tdata(mul_tdata)    // output wire [31 : 0] m_axis_result_tdata
);

wire div_a_tready,div_b_tready,div_tvalid;
wire [31 : 0] div_tdata;
    float_div div (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(mul_tvalid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(div_a_tready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(mul_tdata),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
  .s_axis_b_tready(div_b_tready),            // output wire s_axis_b_tready
  .s_axis_b_tdata(32'b01000011000010110000000000000000),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(div_tvalid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(1'b1),  // input wire m_axis_result_tready
  .m_axis_result_tdata(div_tdata)    // output wire [31 : 0] m_axis_result_tdata
);


wire phase_tready,phase_tvalid;
wire [31 : 0] phase_data;
floating_point_0 fix_phase (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(div_tvalid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(phase_tready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(div_tdata),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(phase_tvalid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(1'b1),  // input wire m_axis_result_tready
  .m_axis_result_tdata(phase_data)    // output wire [31 : 0] m_axis_result_tdata
);


wire optimizer_tready,optimizer_tvalid;
wire [15 : 0] optimizer_TDATA;
phase_optimizer_cordic_0 phase_optimizer(
  .ap_clk(clk),                      // input wire ap_clk
  .ap_rst_n(1'b1),                  // input wire ap_rst_n
  .ap_start(1'b1),                  // input wire ap_start
  //.ap_done(ap_done),                    // output wire ap_done
  //.ap_idle(ap_idle),                    // output wire ap_idle
  //.ap_ready(ap_ready),                  // output wire ap_ready
  .outstream_TVALID(optimizer_tvalid),  // output wire outstream_TVALID
  .outstream_TREADY(1'b1),  // input wire outstream_TREADY
  .outstream_TDATA(optimizer_TDATA),    // output wire [15 : 0] outstream_TDATA
  .instream_TVALID(phase_tvalid),    // input wire instream_TVALID
  .instream_TREADY(optimizer_tready),    // output wire instream_TREADY
  .instream_TDATA(phase_data)      // input wire [31 : 0] instream_TDATA
);


wire cordic_tready,cordic_tvalid;
//wire [31 : 0] cordic_tdata;
cordic_0 sin_cos (
  .aclk(clk),                                // input wire aclk
  .s_axis_phase_tvalid(optimizer_tvalid),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tready(cordic_tready),  // output wire s_axis_phase_tready
  .s_axis_phase_tdata(optimizer_TDATA),    // input wire [15 : 0] s_axis_phase_tdata
  .m_axis_dout_tvalid(cordic_tvalid),    // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(Z)      // output wire [31 : 0] m_axis_dout_tdata
);

//

  /*
    wire div_twopia_ready,div_twopib_ready,div_two_pi_tvalid;
    wire [31 : 0] div_two_pi_tdata;
    div_two_pi dividing_two_pi(
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(div_tvalid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(div_twopia_ready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(div_tdata),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
  .s_axis_b_tready(div_twopib_tready),            // output wire s_axis_b_tready
  .s_axis_b_tdata(32'b01000000110010010000111110010111),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(div_two_pi_tvalid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(1'b1),  // input wire m_axis_result_tready
  .m_axis_result_tdata(div_two_pi_tdata)    // output wire [31 : 0] m_axis_result_tdata
);
    
   
    
    wire fixed_tready,fixed_tvalid;

    float_fixed float_to_fixed (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(div_tvalid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(fixed_tready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(div_tdata),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(fixed_tvalid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(1'b1),  // input wire m_axis_result_tready
  .m_axis_result_tdata(fixed_tdata)    // output wire [31 : 0] m_axis_result_tdata
);


wire int_tready,int_tvalid;
wire [31 : 0] int_tdata;
float_fix_int extract_integer(
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(div_two_pi_tvalid),                      // input wire s_axis_a_tvalid
  .s_axis_a_tready(int_tready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(div_two_pi_tdata),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(int_tvalid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(1'b1),  // input wire m_axis_result_tready
  .m_axis_result_tdata(int_tdata)    // output wire [31 : 0] m_axis_result_tdata
);

wire fix_int_tready,fix_int_tvalid;
wire [31 : 0] int_fix_tdata;
fix_float_int integer_float (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(int_tvalid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(fix_int_tready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(int_tdata),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(fix_int_tvalid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(1'b1),  // input wire m_axis_result_tready
  .m_axis_result_tdata(int_fix_tdata)    // output wire [31 : 0] m_axis_result_tdata
);


     wire mul_twopia_tready,mul_twopib_tready,mul_two_pi_tvalid;
    wire [31 : 0] mul_two_pi_tdata;
    mul_two_pi mul_two_pi(
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(fix_int_tvalid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(mul_twopia_tready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(int_fix_tdata),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
  .s_axis_b_tready(mul_twopib_tready),            // output wire s_axis_b_tready
  .s_axis_b_tdata(32'b01000000110010010000111110010111),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(mul_two_pi_tvalid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(1'b1),  // input wire m_axis_result_tready
  .m_axis_result_tdata(mul_two_pi_tdata)    // output wire [31 : 0] m_axis_result_tdata
);


wire sub_a_tready,sub_b_tready,phase_tvalid;
wire [31 : 0] phase_tdata;
sub sub_two(
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(div_tvalid),            // input wire s_axis_a_tvalid
  .s_axis_a_tready(sub_a_tready),            // output wire s_axis_a_tready
  .s_axis_a_tdata(div_tdata),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(mul_two_pi_tvalid),            // input wire s_axis_b_tvalid
  .s_axis_b_tready(sub_b_tready),            // output wire s_axis_b_tready
  .s_axis_b_tdata(mul_two_pi_tdata),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(phase_tvalid),  // output wire m_axis_result_tvalid
  .m_axis_result_tready(1'b1),  // input wire m_axis_result_tready
  .m_axis_result_tdata(phase_tdata)    // output wire [31 : 0] m_axis_result_tdata
);

  parameter real PI = 3.14159265358979;

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
    wire [31:0] fixed_tdata;
  
  
   // parameter integer_bits = 2;
  //parameter fractional_bits = 12;
  
  // Calculate the range and precision
  //localparam range_val = 2 ** (integer_bits - 1) - 1;
  //localparam precision = 1.0 / (2 ** fractional_bits);
  reg [31:0] QUotient;
  reg [31:0] QUotient2;
  reg [31:0] integer_crop;
 reg [31:0] REminder;


  //quotient = (angle2) / (2*PI);
    QUotient=fixed_tdata/(2*PI);
    integer_crop={QUotient[31:16],16'b0};
    //quotient2=quotient*(2*PI);
    QUotient2=integer_crop*(2*PI);
    //reminder=angle2-quotient2;
    REminder=fixed_tdata-QUotient2;
    //reminder2=reminder;
   // c_t=$cos(reminder);
    //s_t=-$sin(reminder);


    
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
*/

endmodule
