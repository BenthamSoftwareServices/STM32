################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/Core/Src/main.c \
E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/Core/Src/stm32l4xx_hal_msp.c \
E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/Core/Src/stm32l4xx_it.c \
../Application/User/Core/syscalls.c \
../Application/User/Core/sysmem.c 

OBJS += \
./Application/User/Core/main.o \
./Application/User/Core/stm32l4xx_hal_msp.o \
./Application/User/Core/stm32l4xx_it.o \
./Application/User/Core/syscalls.o \
./Application/User/Core/sysmem.o 

C_DEPS += \
./Application/User/Core/main.d \
./Application/User/Core/stm32l4xx_hal_msp.d \
./Application/User/Core/stm32l4xx_it.d \
./Application/User/Core/syscalls.d \
./Application/User/Core/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Core/main.o: E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/Core/Src/main.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../../Core/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../Drivers/CMSIS/Include -I"E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/STM32CubeIDE/Custom/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/stm32l4xx_hal_msp.o: E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/Core/Src/stm32l4xx_hal_msp.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../../Core/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../Drivers/CMSIS/Include -I"E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/STM32CubeIDE/Custom/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/stm32l4xx_it.o: E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/Core/Src/stm32l4xx_it.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../../Core/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../Drivers/CMSIS/Include -I"E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/STM32CubeIDE/Custom/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/%.o Application/User/Core/%.su Application/User/Core/%.cyclo: ../Application/User/Core/%.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../../Core/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../Drivers/CMSIS/Include -I"E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo-L432KC_flash_LED_and_print/STM32CubeIDE/Custom/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Core

clean-Application-2f-User-2f-Core:
	-$(RM) ./Application/User/Core/main.cyclo ./Application/User/Core/main.d ./Application/User/Core/main.o ./Application/User/Core/main.su ./Application/User/Core/stm32l4xx_hal_msp.cyclo ./Application/User/Core/stm32l4xx_hal_msp.d ./Application/User/Core/stm32l4xx_hal_msp.o ./Application/User/Core/stm32l4xx_hal_msp.su ./Application/User/Core/stm32l4xx_it.cyclo ./Application/User/Core/stm32l4xx_it.d ./Application/User/Core/stm32l4xx_it.o ./Application/User/Core/stm32l4xx_it.su ./Application/User/Core/syscalls.cyclo ./Application/User/Core/syscalls.d ./Application/User/Core/syscalls.o ./Application/User/Core/syscalls.su ./Application/User/Core/sysmem.cyclo ./Application/User/Core/sysmem.d ./Application/User/Core/sysmem.o ./Application/User/Core/sysmem.su

.PHONY: clean-Application-2f-User-2f-Core

