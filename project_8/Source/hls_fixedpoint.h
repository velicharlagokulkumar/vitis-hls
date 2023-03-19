#include <stdio.h>
#include "ap_fixed.h"
#include <iostream>
using namespace std;
typedef ap_fixed<28,4> dinA_t;
typedef ap_fixed<28,4> dinB_t;
typedef ap_fixed<56,8> doutC_t;
void multiplier(dinA_t a, dinB_t b, doutC_t *c);
