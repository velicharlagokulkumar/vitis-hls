#include"hls_stream2.h"
int main()
{
	hls::stream<dinA_t> a;
	hls::stream<dinB_t> b;
	hls::stream<doutC_t> c;
	dinA_t test_inputs[10][2] = {
			 {4.125,3.264589},
			 {4.56215,2.4568912},
			 {3.69845632,2.456891},
			 {3.69845632,2.456891},
			 {1.25698456,3.569874},
			 {1.4567896512,5.623366},
			 {5.6684258,6.54566321},
			 {6.2255620,5.636115},
			 {4.6985230,2.5698523},
			 {1.563995,3.2656343}
	   };
	  for (int i = 0; i < 10; i++)
	   {
		   a.write(test_inputs[i][0]);
		   b.write(test_inputs[i][1]);
	       multiply(a,b,c);
	       //out >> result;
	     std::cout<<  test_inputs[i][0] << "*"<< test_inputs[i][1] << "="<<c.read()<<std::endl;
       }
}
