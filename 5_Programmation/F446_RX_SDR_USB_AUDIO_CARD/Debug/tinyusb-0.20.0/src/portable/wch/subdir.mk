################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbfs.c \
../tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbhs.c \
../tinyusb-0.20.0/src/portable/wch/hcd_ch32_usbfs.c 

OBJS += \
./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbfs.o \
./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbhs.o \
./tinyusb-0.20.0/src/portable/wch/hcd_ch32_usbfs.o 

C_DEPS += \
./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbfs.d \
./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbhs.d \
./tinyusb-0.20.0/src/portable/wch/hcd_ch32_usbfs.d 


# Each subdirectory must supply rules for building sources it contributes
tinyusb-0.20.0/src/portable/wch/%.o tinyusb-0.20.0/src/portable/wch/%.su tinyusb-0.20.0/src/portable/wch/%.cyclo: ../tinyusb-0.20.0/src/portable/wch/%.c tinyusb-0.20.0/src/portable/wch/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Zappvion/Documents/PROJETS_ELO/ft8-radio/5_Programmation/F446_RX_SDR_USB_AUDIO_CARD/tinyusb-0.20.0/src" -I"C:/Users/Zappvion/Documents/PROJETS_ELO/ft8-radio/5_Programmation/F446_RX_SDR_USB_AUDIO_CARD/tinyusb-0.20.0/src/device" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-portable-2f-wch

clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-portable-2f-wch:
	-$(RM) ./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbfs.cyclo ./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbfs.d ./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbfs.o ./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbfs.su ./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbhs.cyclo ./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbhs.d ./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbhs.o ./tinyusb-0.20.0/src/portable/wch/dcd_ch32_usbhs.su ./tinyusb-0.20.0/src/portable/wch/hcd_ch32_usbfs.cyclo ./tinyusb-0.20.0/src/portable/wch/hcd_ch32_usbfs.d ./tinyusb-0.20.0/src/portable/wch/hcd_ch32_usbfs.o ./tinyusb-0.20.0/src/portable/wch/hcd_ch32_usbfs.su

.PHONY: clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-portable-2f-wch

