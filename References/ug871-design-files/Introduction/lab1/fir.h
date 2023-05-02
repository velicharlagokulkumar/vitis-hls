#define N 4
#include "ap_fixed.h"

typedef ap_fixed<24,12> coef_t;
typedef ap_fixed<24,12> data_t;
typedef ap_fixed<48,24> acc_t;


//typedef int	coef_t;
//typedef int	data_t;
//typedef int	acc_t;

void fir (data_t *y, coef_t c[N+1],data_t x);
