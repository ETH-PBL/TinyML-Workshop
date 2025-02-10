################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../tensorflow_lite/tensorflow/lite/kernels/internal/quantization_util.cc 

CC_DEPS += \
./tensorflow_lite/tensorflow/lite/kernels/internal/quantization_util.d 

OBJS += \
./tensorflow_lite/tensorflow/lite/kernels/internal/quantization_util.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow_lite/tensorflow/lite/kernels/internal/%.o tensorflow_lite/tensorflow/lite/kernels/internal/%.su tensorflow_lite/tensorflow/lite/kernels/internal/%.cyclo: ../tensorflow_lite/tensorflow/lite/kernels/internal/%.cc tensorflow_lite/tensorflow/lite/kernels/internal/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L475xx -DCMSIS_NN -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Core/Inc" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Drivers/CMSIS/DSP/Include" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Drivers/CMSIS/DSP/PrivateInclude" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Drivers/CMSIS/NN/Include" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Drivers/CMSIS/Include" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/tensorflow_lite" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/tensorflow_lite/third_party/flatbuffers/include" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/tensorflow_lite/third_party/gemmlowp" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/tensorflow_lite/third_party/kissfft" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/tensorflow_lite/third_party/ruy" -I../Drivers/CMSIS/Include -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Core/Inc/models" -I"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/Drivers/CMSIS/Core/Include" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow_lite-2f-tensorflow-2f-lite-2f-kernels-2f-internal

clean-tensorflow_lite-2f-tensorflow-2f-lite-2f-kernels-2f-internal:
	-$(RM) ./tensorflow_lite/tensorflow/lite/kernels/internal/quantization_util.cyclo ./tensorflow_lite/tensorflow/lite/kernels/internal/quantization_util.d ./tensorflow_lite/tensorflow/lite/kernels/internal/quantization_util.o ./tensorflow_lite/tensorflow/lite/kernels/internal/quantization_util.su

.PHONY: clean-tensorflow_lite-2f-tensorflow-2f-lite-2f-kernels-2f-internal

