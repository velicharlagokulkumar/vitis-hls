#include "mulitiplier.h"
int main() {
	dinC_t result;
// Define test inputs
  dinA_t test_inputs[10][2] = {
       {0x0011, 0x0001},
       {0x0011, 0x0002},
       {0x0011, 0x0003},
       {0x0011, 0x0004},
       {0x0011, 0x0005},
       {0x0011, 0x0006},
       {0x0011, 0x0007},
       {0x0011, 0x0008},
       {0x0011, 0x0009},
	   {0x0011, 0x000A}
   };
   for (int i = 0; i < 10; i++)
   {
	   dinA_t a = test_inputs[i][0];
	   dinB_t b = test_inputs[i][1];
    multiplier(a, b, & result);
    printf("%d * %d = %d\n",a,b,result);
  }
   return 0;
}





