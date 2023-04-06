################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/velic/OneDrive/Desktop/vitis/shift_reg_tb.cpp 

OBJS += \
./testbench/shift_reg_tb.o 

CPP_DEPS += \
./testbench/shift_reg_tb.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/shift_reg_tb.o: C:/Users/velic/OneDrive/Desktop/vitis/shift_reg_tb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -IC:/Xilinx/Vitis_HLS/2022.2/include/ap_sysc -IC:/Xilinx/Vitis_HLS/2022.2/win64/tools/systemc/include -IC:/Xilinx/Vitis_HLS/2022.2/include/etc -IC:/Xilinx/Vitis_HLS/2022.2/win64/tools/auto_cc/include -IC:/Users/velic/AppData/Roaming/Xilinx/Vitis -IC:/Xilinx/Vitis_HLS/2022.2/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/shift_reg_tb.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


