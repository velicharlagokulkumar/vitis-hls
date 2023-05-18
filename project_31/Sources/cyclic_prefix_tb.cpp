#include "cp_removal.h"

int main() {
	data_t data;
    data_t in_samples[CP_INPUT_LEN_1 + CP_INPUT_LEN_2];
    data_t out_samples[2*CP_OUTPUT_LEN];

   data_generator(in_samples);
    // Perform cyclic prefix removal
   cyclic_prefix_removal(in_samples, out_samples);


for(int i=0; i < 2*CP_OUTPUT_LEN; i++)
{
    cout<<out_samples[i]<<endl;
}

return 0;
}
