#include "fir.h"
//////////////////////////////////////////////////////////////
// Filter Code Definitions
//////////////////////////////////////////////////////////////
// maximum number of inputs that can be handled
// in one function call
#define MAX_INPUT_LEN 10
// maximum length of filter than can be handled
#define MAX_FLT_LEN 10
// buffer to hold all of the input samples
#define BUFFER_LEN (MAX_FLT_LEN - 1 + MAX_INPUT_LEN)
// array to hold input samples
double insamp[ BUFFER_LEN ];
// FIR init
void firFloatInit( void )
{
 memset( insamp, 0, sizeof( insamp ) );
}

void intToFloat( int *input, double *output, int length )
{
 int i;
 for ( i = 0; i < length; i++ ) {
 output[i] = (double)input[i];
 }
}

// the FIR filter function
void firFloat( double *coeffs, double *input, double *output,
 int length, int filterLength )
{
 double acc; // accumulator for MACs
 double *coeffp; // pointer to coefficients
 double *inputp; // pointer to input samples
 int n;
 int k;
 // put the new samples at the high end of the buffer
 memcpy( &insamp[filterLength - 1], input,
 length * sizeof(double) );
 // apply the filter to each input sample
 for ( n = 0; n < length; n++ ) {
 // calculate output n
 coeffp = coeffs;
 inputp = &insamp[filterLength - 1 + n];
 acc = 0;
 for ( k = 0; k < filterLength; k++ ) {
 acc += (*coeffp++) * (*inputp--);
 }
 output[n] = acc;
 }
 // shift input samples back in time for next time
 memmove( &insamp[0], &insamp[length],
 (filterLength - 1) * sizeof(double) );
}
void floatToInt( double *input, int *output, int length )
{
 int i;
 for ( i = 0; i < length; i++ ) {
 // add rounding constant
 input[i] += 0.5;
 // bound the values to 16 bits
 if ( input[i] > 32767.0 ) {
 input[i] = 32767.0;
 } else if ( input[i] < -32768.0 ) {
 input[i] = -32768.0;
 }
 // convert
 output[i] = (int)input[i];
 }
}
