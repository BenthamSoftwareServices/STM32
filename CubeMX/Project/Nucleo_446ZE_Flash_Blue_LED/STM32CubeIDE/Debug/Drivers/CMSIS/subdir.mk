################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Core/Src/system_stm32f4xx.c 

OBJS += \
./Drivers/CMSIS/system_stm32f4xx.o 

C_DEPS += \
./Drivers/CMSIS/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32f4xx.o: E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Core/Src/system_stm32f4xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/inc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/msvc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/octal/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32f4xx.cyclo ./Drivers/CMSIS/system_stm32f4xx.d ./Drivers/CMSIS/system_stm32f4xx.o ./Drivers/CMSIS/system_stm32f4xx.su

.PHONY: clean-Drivers-2f-CMSIS

