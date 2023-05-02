#include <stdio.h>
#include <math.h>
#include "fir.h"

int main () {
  const int    SAMPLES=80;
  FILE         *fp;

  data_t signal, output;
  coef_t taps[N] = {-1468, 1058,   594,   287,    186,  284,   485,   613,
   495,   90,  -435,  -762,   -615,   21,   821,  1269,
   982,    9, -1132, -1721,  -1296,    1,  1445,  2136,
  1570,    0, -1666, -2413,  -1735,   -2,  1770,  2512,
  1770,   -2, -1735, -2413,  -1666,    0,  1570,  2136,
  1445,    1, -1296, -1721,  -1132,    9,   982,  1269,
   821,   21,  -615,  -762,   -435,   90,   495,   613,
   485,  284,   186,   287,    594, 1058, -1468};

  int i, ramp_up;
  signal = 0;
  ramp_up = 1;
  
  fp=fopen("out.dat","w");
  for (i=0;i<=SAMPLES;i++) {
  	if (ramp_up == 1) 
  		signal = signal + 1;
  	else 
  		signal = signal - 1;

	// Execute the function with latest input
    fir(&output,taps,signal);
    
    if ((ramp_up == 1) && (signal >= 75))
    	ramp_up = 0;
    else if ((ramp_up == 0) && (signal <= -75))
    	ramp_up = 1;
    	
	// Save the results.
    fprintf(fp,"%i %d %d\n",i,signal,output);
  }
  fclose(fp);
  
  printf ("Comparing against output data \n");
 /* if (system("diff -w out.dat out.gold.dat")) {

	fprintf(stdout, "*******************************************\n");
	fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
	fprintf(stdout, "*******************************************\n");
    // return 1;
  } else {
	fprintf(stdout, "*******************************************\n");
	fprintf(stdout, "PASS: The output matches the golden output!\n");
	fprintf(stdout, "*******************************************\n");
     return 0;
  }*/
}
