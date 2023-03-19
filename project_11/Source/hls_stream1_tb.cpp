#include"hls_stream1.h"
int main()
{
	hls::stream<dinA_t> a;
	hls::stream<dinB_t> b;
	hls::stream<doutC_t> c;
	dinA_t test_inputs[10][2] = {
			 {0x00000011,0x00000001},
			 {0x00000011,0x00000002},
			 {0x00000011,0x00000003},
			 {0x00000011,0x00000004},
			 {0x00000011,0x00000005},
			 {0x00000011,0x00000006},
			 {0x00000011,0x00000007},
			 {0x00000011,0x00000008},
			 {0x00000011,0x00000009},
			 {0x00000011,0x0000000A},
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
