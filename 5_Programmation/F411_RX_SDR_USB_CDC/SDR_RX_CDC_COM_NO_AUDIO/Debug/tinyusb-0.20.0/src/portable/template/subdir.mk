################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyusb-0.20.0/src/portable/template/dcd_template.c \
../tinyusb-0.20.0/src/portable/template/hcd_template.c 

OBJS += \
./tinyusb-0.20.0/src/portable/template/dcd_template.o \
./tinyusb-0.20.0/src/portable/template/hcd_template.o 

C_DEPS += \
./tinyusb-0.20.0/src/portable/template/dcd_template.d \
./tinyusb-0.20.0/src/portable/template/hcd_template.d 


# Each subdirectory must supply rules for building sources it contributes
tinyusb-0.20.0/src/portable/template/%.o tinyusb-0.20.0/src/portable/template/%.su tinyusb-0.20.0/src/portable/template/%.cyclo: ../tinyusb-0.20.0/src/portable/template/%.c tinyusb-0.20.0/src/portable/template/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Zappvion/Documents/PROJETS_ELO/ft8-radio/5_Programmation/F411_RX_SDR_USB_CDC/SDR_RX_CDC_COM_NO_AUDIO/tinyusb-0.20.0/src" -I"C:/Users/Zappvion/Documents/PROJETS_ELO/ft8-radio/5_Programmation/F411_RX_SDR_USB_CDC/SDR_RX_CDC_COM_NO_AUDIO/tinyusb-0.20.0/src/device" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-portable-2f-template

clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-portable-2f-template:
	-$(RM) ./tinyusb-0.20.0/src/portable/template/dcd_template.cyclo ./tinyusb-0.20.0/src/portable/template/dcd_template.d ./tinyusb-0.20.0/src/portable/template/dcd_template.o ./tinyusb-0.20.0/src/portable/template/dcd_template.su ./tinyusb-0.20.0/src/portable/template/hcd_template.cyclo ./tinyusb-0.20.0/src/portable/template/hcd_template.d ./tinyusb-0.20.0/src/portable/template/hcd_template.o ./tinyusb-0.20.0/src/portable/template/hcd_template.su

.PHONY: clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-portable-2f-template

