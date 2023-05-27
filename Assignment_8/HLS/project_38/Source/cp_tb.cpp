#include "cp_removal.h"

int main() {

    ComplexT arr[N];
    ComplexT arr2[N];

    float a,b;
    int retval=0;

    ifstream File1("puschTxAfterChannelReal.txt");
    ifstream File2("puschTxAfterChannelImag.txt");
    for (int i = 0; i < N; i++) {
        File1 >> a;
        File2 >> b;
        arr[i].real = a;
        arr[i].imag=b;
    }
    File1.close();
    File2.close();

    for (int i = 0; i < CP_OUTPUT_LEN; i++) {
      arr2[i] = arr[i + CP_LEN_1];
    }

    for (int i = 0; i < CP_OUTPUT_LEN; i++) {
        arr2[i + CP_OUTPUT_LEN] = arr[i + CP_INPUT_LEN_1 + CP_LEN_2];
    }

    ofstream File3("Reference.dat");
    for (int i = 0; i < N-P; i++){
    File3<<"{"<<arr2[i].real<<","<<arr2[i].imag<<"}"<<endl;
    }
    File3.close();



    ofstream File4("output.dat");

    ComplexT arr3[N];
    hls::stream<ComplexT> gdata,cpdata;
    hls::stream<bool> last;

    ComplexT output;
    hls::stream<int> z;
    int t=0;

    data_generator(gdata);
    cyclic_prefix_removal(gdata, cpdata, last);

        for (int i=0;i<N-P;i++){
        if (!cpdata.empty()) {
          output = cpdata.read();
          arr3[i].real=output.real;
          arr3[i].imag=output.imag;
          File4<<"{"<<arr3[i].real<<","<<arr3[i].imag<<"}"<<endl;
        }

    }
    File4.close();

    // can be modified further for testing 10e-3 but unnecessary
	// Compare the results file with the golden results
	retval = system("diff --brief -w reference.dat output.dat");
	if (retval != 0) {
		printf("Failed\n");
		retval=1;
	} else {
		printf("Matched with reference output !\n");
  }
     return 0;
}
