################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32L4xx_HAL_Driver/Src/subdir.mk
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


BUILD_ARTIFACT_NAME := LCD_1602_I2C_Display_with_Nucleo_STM32L432KC
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.elf \

MAP_FILES += \
LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.list \


# All Target
all: main-build

# Main-build Target
main-build: LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.elf secondary-outputs

# Tool invocations
LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.elf LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.map: $(OBJS) $(USER_OBJS) E:\Users\Steven\Documents\GitHub\STM32\STM32CubeIDE\workspace\LCD_1602_I2C_Display_with_Nucleo_STM32L432KC\STM32L432KCUX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"E:\Users\Steven\Documents\GitHub\STM32\STM32CubeIDE\workspace\LCD_1602_I2C_Display_with_Nucleo_STM32L432KC\STM32L432KCUX_FLASH.ld" --specs=nosys.specs -Wl,-Map="LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.elf LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.list LCD_1602_I2C_Display_with_Nucleo_STM32L432KC.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
