#include "alu.h"
int main()
{
	hls::stream<dina> a;
	hls::stream<dinb> b;
	hls::stream<dinop> op;
	hls::stream<dout> output;

	int i=0,j=0,flag=0;
	FILE *fp;
	dina test_inputs[10][2];
	dinop test_opcode[10];
	dout golden_data[10];
	dout out;
	// open the input file to read the data
	fp=fopen("input.dat","r");
	 if (fp == NULL) {
	   printf("Error opening file\n");
	   return 1;
	  }
	while (fscanf(fp,"%d %d %d %d",&test_inputs[i][0],&test_inputs[i][1],&test_opcode[i],&golden_data[i]) == 4) {
	  i++;
	  }
	fclose(fp);

	fp=fopen("output.dat","w");
    for ( j = 0; j < 10; j++)
    {
       a.write(test_inputs[j][0]);
	   b.write(test_inputs[j][1]);
	   op.write(test_opcode[j]);
	   integer_alu(a,b,op,output);
	   output >> out;

	if(out==golden_data[j]){
	 fprintf(fp,"%d %s\n",out,"Test passed");
	 }

	else {
	 fprintf(fp,"%d %s\n",out,"Test Failed");
	 flag=1;
	}
	}
	  fclose(fp);

     if(flag==0){
	   std::cout<<"all the read input sets passed"<<std::endl;
	  }
	   else{
	    std::cout<<"few read input sets were not passed"<<std::endl;
	  }
}
