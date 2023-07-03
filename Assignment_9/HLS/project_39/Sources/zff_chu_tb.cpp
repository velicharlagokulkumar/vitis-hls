#include <iostream>
#include <hls_stream.h>
#include <math.h>
#include <complex>
using namespace std;
#include <fstream>

typedef complex <float> data_stream;

void zadoff_chu_generator_hls(hls::stream<data_stream>& out_stream, int length, int u,hls::stream<bool> &tlast);
int main() {
    const int LENGTH = 139;
    const int U = 25;

    double arr1[LENGTH];
    double arr2[LENGTH];
    data_stream arr3[LENGTH];
    int threshold = 5;
    int flag=0;
    hls::stream<data_stream> out_stream;
    hls::stream<bool> t_last;

    ifstream File1("real_matlab.txt");
    for (int i = 0; i < LENGTH; i++){
    File1>>arr1[i];
    }
    File1.close();

    ifstream File2("imag_matlab.txt");
    for (int i = 0; i < LENGTH; i++){
    File2>>arr2[i];
    }
   File2.close();

    zadoff_chu_generator_hls(out_stream, LENGTH, U,t_last);

    ofstream File5("hls_zff_sequence.txt");
    for (int i = 0; i < LENGTH; i++){
    	arr3[i] = out_stream.read();
    	File5 << arr3[i]<<endl;
      }
    File5.close();

    ofstream File3("generator_real.txt");
    for (int i = 0; i < LENGTH; i++){
    	File3<<arr3[i].real()<<endl;
      }
      File3.close();

      ofstream File4("generator_imag.txt");
         for (int i = 0; i < LENGTH; i++){
         	File4<<arr3[i].imag()<<endl;
           }
           File4.close();

           for (int i = 0; i < LENGTH; i++) {
               float absoluteDiff = abs(arr1[i] - arr3[i].real());
               float thresholdValue = (threshold * abs(arr1[i])) / 100;
               if (absoluteDiff > thresholdValue) {
                   cout << "Sample " << i << " exceeds the threshold: " << arr1[i] << ", " << arr3[i].real()<< endl;
                   flag=1;
               }

           }
if(flag==1)
{
	cout<<"Few Samples are exceeded the threshold when compared with MATLAB reference output"<<endl;
}
else
{
	cout<<"All Samples are within the tolerance band when compared with MATLAB reference output"<<endl;
}

    return 0;
}
