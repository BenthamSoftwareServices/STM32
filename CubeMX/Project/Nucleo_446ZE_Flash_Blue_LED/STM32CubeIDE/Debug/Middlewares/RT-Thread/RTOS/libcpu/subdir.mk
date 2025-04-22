################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/libcpu/arm/cortex-m4/cpuport.c 

S_UPPER_SRCS += \
E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/libcpu/arm/cortex-m4/context_gcc.S 

OBJS += \
./Middlewares/RT-Thread/RTOS/libcpu/context_gcc.o \
./Middlewares/RT-Thread/RTOS/libcpu/cpuport.o 

S_UPPER_DEPS += \
./Middlewares/RT-Thread/RTOS/libcpu/context_gcc.d 

C_DEPS += \
./Middlewares/RT-Thread/RTOS/libcpu/cpuport.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/RT-Thread/RTOS/libcpu/context_gcc.o: E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/libcpu/arm/cortex-m4/context_gcc.S Middlewares/RT-Thread/RTOS/libcpu/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Middlewares/RT-Thread/RTOS/libcpu/cpuport.o: E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/libcpu/arm/cortex-m4/cpuport.c Middlewares/RT-Thread/RTOS/libcpu/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../RT-Thread -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/inc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/msvc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/octal/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-RT-2d-Thread-2f-RTOS-2f-libcpu

clean-Middlewares-2f-RT-2d-Thread-2f-RTOS-2f-libcpu:
	-$(RM) ./Middlewares/RT-Thread/RTOS/libcpu/context_gcc.d ./Middlewares/RT-Thread/RTOS/libcpu/context_gcc.o ./Middlewares/RT-Thread/RTOS/libcpu/cpuport.cyclo ./Middlewares/RT-Thread/RTOS/libcpu/cpuport.d ./Middlewares/RT-Thread/RTOS/libcpu/cpuport.o ./Middlewares/RT-Thread/RTOS/libcpu/cpuport.su

.PHONY: clean-Middlewares-2f-RT-2d-Thread-2f-RTOS-2f-libcpu

