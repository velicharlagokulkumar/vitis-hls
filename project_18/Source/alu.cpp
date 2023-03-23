#include "alu.h"
void integer_alu(
    hls::stream<dina> &in1,
    hls::stream<dinb> &in2,
    hls::stream<dinop> &op,
    hls::stream<dout> &out
) {
    #pragma HLS INTERFACE axis port=in1
    #pragma HLS INTERFACE axis port=in2
    #pragma HLS INTERFACE axis port=op
    #pragma HLS INTERFACE axis port=out
   // #pragma HLS INTERFACE s_axilite port=out bundle=CTRL_BUS
    #pragma HLS PIPELINE II=1

    dina a, b;
    dinop operation;
    dout result;

            a = in1.read();
            b = in2.read();
            operation=op.read();
            switch (operation) {
                case 0: // ADD
                    result = a + b;
                    break;
                case 1: // SUB
                    result= a - b;
                    break;
                case 2: // MUL
                    result= a * b;
                    break;
                case 3: // DIV
                    result = a / b;
                    break;
                case 4: // AND
                    result = a & b;
                    break;
                case 5: // OR
                    result = a | b;
                    break;
                case 6: // XOR
                    result = a ^ b;
                default:
                	//result="INVALID";
                    break;
            }
            out.write(result);
    }
