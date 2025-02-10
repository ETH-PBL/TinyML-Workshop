################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c \
../Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c 

C_DEPS += \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.d \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.d 

OBJS += \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.o \
./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/NN/Source/ConvolutionFunctions/%.o Drivers/CMSIS/NN/Source/ConvolutionFunctions/%.su Drivers/CMSIS/NN/Source/ConvolutionFunctions/%.cyclo: ../Drivers/CMSIS/NN/Source/ConvolutionFunctions/%.c Drivers/CMSIS/NN/Source/ConvolutionFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L475xx -DCMSIS_NN -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Drivers/CMSIS/Core/Include" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Core/Inc" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Drivers/CMSIS/DSP/Include" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Drivers/CMSIS/DSP/PrivateInclude" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Drivers/CMSIS/NN/Include" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Drivers/CMSIS/Include" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/tensorflow_lite" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/tensorflow_lite/third_party/flatbuffers/include" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/tensorflow_lite/third_party/gemmlowp" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/tensorflow_lite/third_party/kissfft" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/tensorflow_lite/third_party/ruy" -I../Drivers/CMSIS/Include -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Core/Inc/models" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-ConvolutionFunctions

clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-ConvolutionFunctions:
	-$(RM) ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.d
	-$(RM) ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.su ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.cyclo ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.d ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o ./Drivers/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.su

.PHONY: clean-Drivers-2f-CMSIS-2f-NN-2f-Source-2f-ConvolutionFunctions

