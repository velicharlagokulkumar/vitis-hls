#include"bram.h"
#include <hls_stream.h>
#include <iostream>
#define BRAM_DEPTH 64
#define BUNDLE_SIZE 8
#include <ap_int.h>
typedef ap_uint<8> size;
void dut(size start_index, hls::stream<size>& output);

int main()
{
	   hls::stream<size> output;
	    size out,start_index;
		size golden_data[8][8];
		size func_data[8][8];
		size index[8];
		int i=0,j=0,flag=0,count=0;
		FILE *fp;

	  fp=fopen("bramA_input.dat","r");
	  	 if (fp == NULL) {
	  	   printf("Error opening file\n");
	  	   return 1;
	  	  }
	  	while(fscanf(fp,"%d  %d %d %d %d %d %d %d %d",&index[i],&golden_data[i][0],&golden_data[i][1],
	  			&golden_data[i][2],&golden_data[i][3],&golden_data[i][4],&golden_data[i][5],&golden_data[i][6],
				&golden_data[i][7]) == 9) {
	  	  i++;
	  	  }
	  fclose(fp);


	  for(i=0; i<8; i++){
	    	start_index=index[i];
	    dut(start_index,output);
		//output >> out;
		//std::cout<<start_index<<std::endl;
	    for (size j=0 ; j <BUNDLE_SIZE; j++) {
	    func_data[i][j]=output.read();
	    //std::cout<< func_data[i][j]<<std::endl;
	    }
	  }
	  fp=fopen("output.dat","w");
	  for (int i = 0; i < 8; i++) {
	   for (int j = 0; j < BUNDLE_SIZE; j++){
		   if(func_data[i][j]==golden_data[i][j]){
			 count++;
		   }
	   }
	   if(count==8)
	   {
		   fprintf(fp,"%s\n","Test Passed");
	   }
	   else
	   {
		   fprintf(fp,"%s\n","Test Failed!");
		   flag=1;
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

