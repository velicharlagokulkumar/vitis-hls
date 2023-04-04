#include <iostream>
#include <fstream>
#include <hls_stream.h>
#include <ap_int.h>
const int BRAM_DEPTH = 4;
const int INPUT_WIDTH = 8;
const int OUTPUT_WIDTH = 32;

typedef ap_uint<INPUT_WIDTH> input_t;
typedef ap_uint<OUTPUT_WIDTH> output_t;

void dut(hls::stream<input_t>& in_stream, hls::stream<output_t>& out_stream);
int main() {
	hls::stream<input_t> in_stream;
	hls::stream<output_t> out_stream;
	input_t test_inputs[10][4];
	input_t golden_data[10][4];
	input_t bram_func_data[10][4];
	int i=0,j=0,k=0,flag=0,count=0;
	FILE *fp;

  fp=fopen("input.dat","r");
  	 if (fp == NULL) {
  	   printf("Error opening file\n");
  	   return 1;
  	  }
  	while(fscanf(fp,"%d %d %d %d  %d %d %d %d",&test_inputs[i][0],&test_inputs[i][1],&test_inputs[i][2],
  			&test_inputs[i][3],&golden_data[i][0],&golden_data[i][1],&golden_data[i][2],&golden_data[i][3]) == 8) {
  	  i++;
  	  }
  fclose(fp);
  for (int i = 0; i < 10; i++) {
  for (int j = 0; j < BRAM_DEPTH; j++) {
    input_t data = test_inputs[i][j];
    in_stream.write(data);
  }
  }
	fp=fopen("output.dat","w");
  for (int i = 0; i < 10; i++) {
	dut(in_stream, out_stream);
   for (int j = 0; j < BRAM_DEPTH; j++){
    //std::cout << "Output: " << out_stream.read() << std::endl;
	   bram_func_data[i][j]=out_stream.read();
   }
  }
  for (int i = 0; i < 10; i++) {
   for (int j = 0; j < BRAM_DEPTH; j++){
	   if(bram_func_data[i][j]==golden_data[i][j]){
		 count++;
	   }
   }
   if(count==4)
   {
	   //fprintf(fp,"%d %d %d %d %s\n",bram_func_data[k][0],bram_func_data[k][1],bram_func_data[k][2],
		//	   bram_func_data[k][3],"Test Passed");
	   //k++;
	   fprintf(fp,"%s\n","Test Passed");
   }
   else
   {
	   //fprintf(fp,"%d %d %d %d %s\n",bram_func_data[k][0],bram_func_data[k][1],bram_func_data[k][2],
	   		//	   bram_func_data[k][3],"Test Failed!");
	   fprintf(fp,"%s\n","Test Failed!");
	   flag=1;
	   //k++;
   }
   count=0;
  }
  fclose(fp);

      if(flag==0){
 	   std::cout<<"all the read input sets passed"<<std::endl;
 	  }
 	   else{
 	    std::cout<<"few read input sets were not passed"<<std::endl;
 	  }
  return 0;
}
