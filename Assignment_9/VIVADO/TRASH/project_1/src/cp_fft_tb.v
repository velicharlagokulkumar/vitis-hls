`timescale 1ns / 1ps

module cp_fft_tb(
    );
    
    `timescale 1ns / 1ps

  reg ap_clk_0;
  reg ap_rst_n_0;
  wire [63:0]m_axis_data_tdata_0;
  wire m_axis_data_tlast_0;
  wire m_axis_data_tvalid_0;
  wire s_axis_config_tready_0;
  wire s_axis_data_tready_0;
  integer file_handle;
  reg [63:0] outdata;
  reg [32:0] counter=0;

design_1_wrapper in1
   (.ap_clk_0(ap_clk_0),
    .ap_rst_n_0(ap_rst_n_0),
    .m_axis_data_tdata_0(m_axis_data_tdata_0),
    .m_axis_data_tlast_0(m_axis_data_tlast_0),
    .m_axis_data_tvalid_0(m_axis_data_tvalid_0),
    .s_axis_config_tready_0(s_axis_config_tready_0),
    .s_axis_data_tready_0(s_axis_data_tready_0));


        always#5 ap_clk_0=~ap_clk_0;
        
       
        initial begin
        file_handle = $fopen("fft_ip.txt","w");
        ap_clk_0=0; 
        ap_rst_n_0=0;
        #10 ap_rst_n_0=1;
        end
        
          // Store samples of outdata into a file whenever clock and valid are high
  always @(posedge ap_clk_0) begin
    if (m_axis_data_tvalid_0 && ap_clk_0) begin
    outdata=m_axis_data_tdata_0;
        $fwrite(file_handle, "%h\n", outdata);
         counter=counter+1;
          $display( "%h %d\n", outdata,counter);
         if(counter==8192)begin
     $fclose(file_handle); 
end
 end
  end

endmodule

    