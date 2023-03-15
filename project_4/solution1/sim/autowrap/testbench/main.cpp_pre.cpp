# 1 "C:/Users/velic/OneDrive/Desktop/vitis/main.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/velic/OneDrive/Desktop/vitis/main.cpp"
# 1 "C:/Users/velic/OneDrive/Desktop/vitis/mulitiplier.h" 1
void multiplier(char a, char b, short &c);
# 2 "C:/Users/velic/OneDrive/Desktop/vitis/main.cpp" 2
void multiplier(char a, char b, short &c)
{
#pragma HLS INTERFACE ap_none port=a
#pragma HLS INTERFACE ap_none port=b
#pragma HLS INTERFACE ap_none port=c
    c = a * b;
}
