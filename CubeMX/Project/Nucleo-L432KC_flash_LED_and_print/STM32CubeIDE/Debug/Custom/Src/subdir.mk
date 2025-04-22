################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Custom/Src/led_control.c \
../Custom/Src/uart_control.c 

OBJS += \
./Custom/Src/led_control.o \
./Custom/Src/uart_control.o 

C_DEPS += \
./Custom/Src/led_control.d \
./Custom/Src/uart_control.d 


# Each subdirectory must supply rules for building sources it contributes
Custom/Src/%.o Custom/Src/%.su Custom/Src/%.cyclo: ../Custom/Src/%.c Custom/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../../Core/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../Drivers/CMSIS/Include -I"E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/STM32CubeIDE/Custom/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Custom-2f-Src

clean-Custom-2f-Src:
	-$(RM) ./Custom/Src/led_control.cyclo ./Custom/Src/led_control.d ./Custom/Src/led_control.o ./Custom/Src/led_control.su ./Custom/Src/uart_control.cyclo ./Custom/Src/uart_control.d ./Custom/Src/uart_control.o ./Custom/Src/uart_control.su

.PHONY: clean-Custom-2f-Src

