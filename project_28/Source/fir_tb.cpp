#include "fir.h"
#define SAMPLES 5
#define FILTER_LEN 4

int main()
{
  int flag=0;
  int size;
  int sum1=0;
  acc_t sum2=0;

  int input[SAMPLES];//={1,2,3,4,5};
  data_t input1[SAMPLES];//={1,2,3,4,5};

  double coeffs[ FILTER_LEN ];// = {2,3,4,1};
  coef_t taps[ FILTER_LEN ]; //={2,3,4,1};

  int output[SAMPLES];
  acc_t output1[SAMPLES];

 double floatInput[SAMPLES];
 double floatOutput[SAMPLES];

 ifstream inputFile("fir_signal.dat");

        for (int j = 0; j < SAMPLES; j++) {
            inputFile >> input[j];
        }
 inputFile.close();

ifstream inputFile1("fir_signal.dat");

         for (int j = 0; j < SAMPLES; j++) {
             inputFile1 >> input1[j];
         }
  inputFile1.close();

  ifstream inputFile2("fir_coeffs.dat");

         for (int j = 0; j < FILTER_LEN; j++) {
             inputFile2 >> coeffs[j];
         }

  inputFile2.close();

  ifstream inputFile3("fir_coeffs.dat");

          for (int j = 0; j < FILTER_LEN; j++) {
              inputFile3 >> taps[j];
          }
   inputFile3.close();

 // initialize the filter
 firFloatInit();
 // process all of the samples
 // convert to doubles
    intToFloat( input, floatInput,SAMPLES);
 // perform the filtering with C Code
    firFloat( coeffs, floatInput, floatOutput, SAMPLES , FILTER_LEN );
 // convert to ints
    floatToInt( floatOutput, output, SAMPLES);

   for (int j=0;j<SAMPLES;j++){
// perform the filtering with HLS code
	 fir(&output1[j],taps,input1[j]);
	 //std::cout<<output[j]<<" "<<output1[j]<<std::endl;

	 sum1+=output[j];
	 sum2+=output1[j];
 }
	 double threshold = 0.05;
	 double diff = abs(sum1- double(sum2));
	 double larger = (sum1>double(sum2)) ? sum1 :double(sum2);
	 if (diff > larger * threshold){
	       cout << "more than threshold (>5%) " << endl;
	 }
	    else{
	       cout << "within threshold " << endl;
	    }
	 ofstream outputfile("fir_out.dat");
	  outputfile<<"HLS-CODE"<<"     "<<"C-CODE"<<endl;
	  for (int j = 0; j < SAMPLES; j++) {
	     outputfile << output1[j]<<"  ~=  "<< output[j]<< endl;
	   }
	  outputfile.close();

 return 0;
}



