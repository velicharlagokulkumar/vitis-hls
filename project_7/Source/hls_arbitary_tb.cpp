#include "hls_arbitary.h"
int main() {
	doutC_t result;
// Define test inputs
  dinA_t test_inputs[10][2] = {
       {0x00000011, 0x00000001},
       {0x00000011, 0x00000002},
       {0x00000011, 0x00000003},
       {0x00000011, 0x00000004},
       {0x00000011, 0x00000005},
       {0x00000011, 0x00000006},
       {0x00000011, 0x00000007},
       {0x00000011, 0x00000008},
       {0x00000011, 0x00000009},
	   {0x00000011, 0x0000000A}
   };
   for (int i = 0; i < 10; i++)
   {
	   dinA_t a = test_inputs[i][0];
	   dinB_t b = test_inputs[i][1];
       multiplier(a, b, & result);
       cout << a << "*"<< b << "=" << result <<endl;
    // printf("%d * %d = %d\n",a,b,result);
  }
   return 0;
}





