#ifndef FIR_H_
#define FIR_H_
#define N 4
#include "ap_fixed.h"
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <iostream>
#include <fstream>

using namespace std;


typedef ap_fixed<24,12> coef_t;
typedef ap_fixed<24,12> data_t;
typedef ap_fixed<48,24> acc_t;

void fir (acc_t *y, coef_t c[N+1], data_t x);
void firFloatInit( void );
void intToFloat( int *input, double *output, int length );
void firFloat( double *coeffs, double *input, double *output, int length, int filterLength );
void floatToInt( double *input, int *output, int length );

#endif
