#include <stdio.h>
#include "multiplier.h"
int main() {
   short result;
// Define test inputs
   char test_inputs[10][2] = {
       {0x10, 0x01},
       {0x10, 0x02},
       {0x10, 0x03},
       {0x10, 0x04},
       {0x10, 0x05},
       {0x10, 0x06},
       {0x10, 0x07},
       {0x10, 0x08},
       {0x10, 0x09},
	   {0x10, 0x0A}
   };
   for (int i = 0; i < 10; i++)
   {
    int a = test_inputs[i][0];
    int b = test_inputs[i][1];
    multiplier(a, b, & result);
    printf("%d * %d = %d\n",a,b,result);
  }
   return 0;
}





