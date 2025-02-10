################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include tensorflow_lite/tensorflow/lite/schema/subdir.mk
-include tensorflow_lite/tensorflow/lite/micro/memory_planner/subdir.mk
-include tensorflow_lite/tensorflow/lite/micro/kernels/testdata/subdir.mk
-include tensorflow_lite/tensorflow/lite/micro/kernels/cmsis_nn/subdir.mk
-include tensorflow_lite/tensorflow/lite/micro/kernels/subdir.mk
-include tensorflow_lite/tensorflow/lite/micro/arena_allocator/subdir.mk
-include tensorflow_lite/tensorflow/lite/micro/subdir.mk
-include tensorflow_lite/tensorflow/lite/kernels/internal/reference/subdir.mk
-include tensorflow_lite/tensorflow/lite/kernels/internal/subdir.mk
-include tensorflow_lite/tensorflow/lite/kernels/subdir.mk
-include tensorflow_lite/tensorflow/lite/core/api/subdir.mk
-include tensorflow_lite/tensorflow/lite/c/subdir.mk
-include Drivers/STM32L4xx_HAL_Driver/Src/subdir.mk
-include Drivers/CMSIS/NN/Source/SoftmaxFunctions/subdir.mk
-include Drivers/CMSIS/NN/Source/SVDFunctions/subdir.mk
-include Drivers/CMSIS/NN/Source/ReshapeFunctions/subdir.mk
-include Drivers/CMSIS/NN/Source/PoolingFunctions/subdir.mk
-include Drivers/CMSIS/NN/Source/NNSupportFunctions/subdir.mk
-include Drivers/CMSIS/NN/Source/FullyConnectedFunctions/subdir.mk
-include Drivers/CMSIS/NN/Source/ConvolutionFunctions/subdir.mk
-include Drivers/CMSIS/NN/Source/ConcatenationFunctions/subdir.mk
-include Drivers/CMSIS/NN/Source/BasicMathFunctions/subdir.mk
-include Drivers/CMSIS/NN/Source/ActivationFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/TransformFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/SupportFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/StatisticsFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/SVMFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/MatrixFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/InterpolationFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/FilteringFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/DistanceFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/ControllerFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/ComplexMathFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/CommonTables/subdir.mk
-include Drivers/CMSIS/DSP/Source/BayesFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/BasicMathFunctions/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(CCM_DEPS)),)
-include $(CCM_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CXXM_DEPS)),)
-include $(CXXM_DEPS)
endif
ifneq ($(strip $(C++M_DEPS)),)
-include $(C++M_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := arm_ws
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
arm_ws.elf \

MAP_FILES += \
arm_ws.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
arm_ws.list \


# All Target
all: main-build

# Main-build Target
main-build: arm_ws.elf secondary-outputs

# Tool invocations
arm_ws.elf arm_ws.map: $(OBJS) $(USER_OBJS) /Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/STM32L475VGTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-g++ -o "arm_ws.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"/Users/mgiordano/Downloads/arm_workshop/solutions/stm32cubeIDE/STM32L475VGTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="arm_ws.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

arm_ws.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "arm_ws.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) arm_ws.elf arm_ws.list arm_ws.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
