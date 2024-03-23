################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F1xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := Blink_STM32F103RET6_Mini_Board
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
Blink_STM32F103RET6_Mini_Board.elf \

MAP_FILES += \
Blink_STM32F103RET6_Mini_Board.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
Blink_STM32F103RET6_Mini_Board.list \


# All Target
all: main-build

# Main-build Target
main-build: Blink_STM32F103RET6_Mini_Board.elf secondary-outputs

# Tool invocations
Blink_STM32F103RET6_Mini_Board.elf Blink_STM32F103RET6_Mini_Board.map: $(OBJS) $(USER_OBJS) E:\Users\Steven\Documents\GitHub\STM32\STM32CubeIDE\workspace_1.14.0\Blink_STM32F103RET6_Mini_Board\STM32F103RETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "Blink_STM32F103RET6_Mini_Board.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"E:\Users\Steven\Documents\GitHub\STM32\STM32CubeIDE\workspace_1.14.0\Blink_STM32F103RET6_Mini_Board\STM32F103RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="Blink_STM32F103RET6_Mini_Board.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

Blink_STM32F103RET6_Mini_Board.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "Blink_STM32F103RET6_Mini_Board.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) Blink_STM32F103RET6_Mini_Board.elf Blink_STM32F103RET6_Mini_Board.list Blink_STM32F103RET6_Mini_Board.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
