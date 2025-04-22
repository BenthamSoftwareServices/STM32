################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/src/cmd.c \
E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/src/msh.c \
E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/src/msh_file.c \
E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/src/msh_parse.c \
E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/src/shell.c 

OBJS += \
./Middlewares/RT-Thread/RTOS/shell/cmd.o \
./Middlewares/RT-Thread/RTOS/shell/msh.o \
./Middlewares/RT-Thread/RTOS/shell/msh_file.o \
./Middlewares/RT-Thread/RTOS/shell/msh_parse.o \
./Middlewares/RT-Thread/RTOS/shell/shell.o 

C_DEPS += \
./Middlewares/RT-Thread/RTOS/shell/cmd.d \
./Middlewares/RT-Thread/RTOS/shell/msh.d \
./Middlewares/RT-Thread/RTOS/shell/msh_file.d \
./Middlewares/RT-Thread/RTOS/shell/msh_parse.d \
./Middlewares/RT-Thread/RTOS/shell/shell.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/RT-Thread/RTOS/shell/cmd.o: E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/src/cmd.c Middlewares/RT-Thread/RTOS/shell/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../RT-Thread -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/inc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/msvc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/octal/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RT-Thread/RTOS/shell/msh.o: E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/src/msh.c Middlewares/RT-Thread/RTOS/shell/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../RT-Thread -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/inc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/msvc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/octal/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RT-Thread/RTOS/shell/msh_file.o: E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/src/msh_file.c Middlewares/RT-Thread/RTOS/shell/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../RT-Thread -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/inc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/msvc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/octal/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RT-Thread/RTOS/shell/msh_parse.o: E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/src/msh_parse.c Middlewares/RT-Thread/RTOS/shell/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../RT-Thread -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/inc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/msvc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/octal/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/RT-Thread/RTOS/shell/shell.o: E:/Users/Steven/Documents/GitHub/STM32/CubeMX/Project/Nucleo_446ZE_Flash_Blue_LED/Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/src/shell.c Middlewares/RT-Thread/RTOS/shell/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../RT-Thread -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/components/finsh/inc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/include/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/msvc/ -I../../Middlewares/Third_Party/RealThread_RTOS_RT-Thread/include/libc/extension/fcntl/octal/ -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-RT-2d-Thread-2f-RTOS-2f-shell

clean-Middlewares-2f-RT-2d-Thread-2f-RTOS-2f-shell:
	-$(RM) ./Middlewares/RT-Thread/RTOS/shell/cmd.cyclo ./Middlewares/RT-Thread/RTOS/shell/cmd.d ./Middlewares/RT-Thread/RTOS/shell/cmd.o ./Middlewares/RT-Thread/RTOS/shell/cmd.su ./Middlewares/RT-Thread/RTOS/shell/msh.cyclo ./Middlewares/RT-Thread/RTOS/shell/msh.d ./Middlewares/RT-Thread/RTOS/shell/msh.o ./Middlewares/RT-Thread/RTOS/shell/msh.su ./Middlewares/RT-Thread/RTOS/shell/msh_file.cyclo ./Middlewares/RT-Thread/RTOS/shell/msh_file.d ./Middlewares/RT-Thread/RTOS/shell/msh_file.o ./Middlewares/RT-Thread/RTOS/shell/msh_file.su ./Middlewares/RT-Thread/RTOS/shell/msh_parse.cyclo ./Middlewares/RT-Thread/RTOS/shell/msh_parse.d ./Middlewares/RT-Thread/RTOS/shell/msh_parse.o ./Middlewares/RT-Thread/RTOS/shell/msh_parse.su ./Middlewares/RT-Thread/RTOS/shell/shell.cyclo ./Middlewares/RT-Thread/RTOS/shell/shell.d ./Middlewares/RT-Thread/RTOS/shell/shell.o ./Middlewares/RT-Thread/RTOS/shell/shell.su

.PHONY: clean-Middlewares-2f-RT-2d-Thread-2f-RTOS-2f-shell

