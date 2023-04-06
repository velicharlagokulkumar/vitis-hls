#include<hls_stream.h>
#include <ap_int.h>
#include <iostream>
#include <fstream>
using namespace std;

typedef ap_uint<16> size;

void shift_register(hls::stream<size> &data_in, size shift_value, bool shift_flag,
		                  hls::stream<size> &data_out);
int main()
{
	hls::stream<size> data_in;
	size shift_value;
	hls::stream<size> data_out;

	size data[8][34];
    size dout[8][34];
    bool shift_flag=0;
    int i=0,j=0,k=0,flag=0,count=0;
    	FILE *fp;

    ifstream inputFile("shift_reg_input.dat");

       for (int i = 0; i < 8; i++) {
           for (int j = 0; j < 34; j++) {
               inputFile >> data[i][j];
           }
       }

       inputFile.close();

  // ifstream outputFile("output.dat");

     for(int i=0;i<8;i++){
        shift_value=data[i][16];
        shift_flag=data[i][17];
     for(int j=0;j<16;j++){
    data_in.write(data[i][j]);
     }

   shift_register(data_in,shift_value,shift_flag,data_out);

   fp=fopen("output.dat","w");
    for(int k=0;k<16;k++){
     dout[i][k]= data_out.read();
    }
    }

     for (int i = 0; i < 8; i++) {
        for (int j = 0; j < 16; j++){
     	   if(dout[i][j]==data[i][j+18]){
     		 count++;
     	   }
        }
        if(count==16)
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

