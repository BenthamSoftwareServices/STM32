################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../led_control.c 

OBJS += \
./led_control.o 

C_DEPS += \
./led_control.d 


# Each subdirectory must supply rules for building sources it contributes
led_control.o: ../led_control.c subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../../Core/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../Drivers/CMSIS/Include -include"E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/STM32CubeIDE/led_control.c" -include"E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/STM32CubeIDE/led_control.h" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean--2e-

clean--2e-:
	-$(RM) ./led_control.cyclo ./led_control.d ./led_control.o ./led_control.su

.PHONY: clean--2e-

