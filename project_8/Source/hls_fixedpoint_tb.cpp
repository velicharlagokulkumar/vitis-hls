#include"hls_fixedpoint.h"
int main()
{
	doutC_t result;
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
		  dinA_t a=test_inputs[i][0];
		  dinB_t b=test_inputs[i][1];
	       multiplier(a,b,&result);
	     std::cout<< a << "*"<< b << "="<< result<<std::endl;
	     //printf("%d * %d= %d\n",a,b,result);
       }
	  return 0;
}
