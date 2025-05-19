################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/check_display_input.c \
../Core/Src/fonts.c \
../Core/Src/ili9341_gfx.c \
../Core/Src/ili9341_stm32_driver.c \
../Core/Src/ili9341_touch.c \
../Core/Src/main.c \
../Core/Src/simpleDisplay.c \
../Core/Src/stm32f4xx_hal_msp.c \
../Core/Src/stm32f4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f4xx.c \
../Core/Src/uart_message.c 

C_DEPS += \
./Core/Src/check_display_input.d \
./Core/Src/fonts.d \
./Core/Src/ili9341_gfx.d \
./Core/Src/ili9341_stm32_driver.d \
./Core/Src/ili9341_touch.d \
./Core/Src/main.d \
./Core/Src/simpleDisplay.d \
./Core/Src/stm32f4xx_hal_msp.d \
./Core/Src/stm32f4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f4xx.d \
./Core/Src/uart_message.d 

OBJS += \
./Core/Src/check_display_input.o \
./Core/Src/fonts.o \
./Core/Src/ili9341_gfx.o \
./Core/Src/ili9341_stm32_driver.o \
./Core/Src/ili9341_touch.o \
./Core/Src/main.o \
./Core/Src/simpleDisplay.o \
./Core/Src/stm32f4xx_hal_msp.o \
./Core/Src/stm32f4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f4xx.o \
./Core/Src/uart_message.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/generated/videos/include -I../TouchGFX/gui/include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/check_display_input.cyclo ./Core/Src/check_display_input.d ./Core/Src/check_display_input.o ./Core/Src/check_display_input.su ./Core/Src/fonts.cyclo ./Core/Src/fonts.d ./Core/Src/fonts.o ./Core/Src/fonts.su ./Core/Src/ili9341_gfx.cyclo ./Core/Src/ili9341_gfx.d ./Core/Src/ili9341_gfx.o ./Core/Src/ili9341_gfx.su ./Core/Src/ili9341_stm32_driver.cyclo ./Core/Src/ili9341_stm32_driver.d ./Core/Src/ili9341_stm32_driver.o ./Core/Src/ili9341_stm32_driver.su ./Core/Src/ili9341_touch.cyclo ./Core/Src/ili9341_touch.d ./Core/Src/ili9341_touch.o ./Core/Src/ili9341_touch.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/simpleDisplay.cyclo ./Core/Src/simpleDisplay.d ./Core/Src/simpleDisplay.o ./Core/Src/simpleDisplay.su ./Core/Src/stm32f4xx_hal_msp.cyclo ./Core/Src/stm32f4xx_hal_msp.d ./Core/Src/stm32f4xx_hal_msp.o ./Core/Src/stm32f4xx_hal_msp.su ./Core/Src/stm32f4xx_it.cyclo ./Core/Src/stm32f4xx_it.d ./Core/Src/stm32f4xx_it.o ./Core/Src/stm32f4xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f4xx.cyclo ./Core/Src/system_stm32f4xx.d ./Core/Src/system_stm32f4xx.o ./Core/Src/system_stm32f4xx.su ./Core/Src/uart_message.cyclo ./Core/Src/uart_message.d ./Core/Src/uart_message.o ./Core/Src/uart_message.su

.PHONY: clean-Core-2f-Src

