################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyusb-0.20.0/src/portable/raspberrypi/rp2040/dcd_rp2040.c \
../tinyusb-0.20.0/src/portable/raspberrypi/rp2040/hcd_rp2040.c \
../tinyusb-0.20.0/src/portable/raspberrypi/rp2040/rp2040_usb.c 

OBJS += \
./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/dcd_rp2040.o \
./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/hcd_rp2040.o \
./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/rp2040_usb.o 

C_DEPS += \
./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/dcd_rp2040.d \
./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/hcd_rp2040.d \
./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/rp2040_usb.d 


# Each subdirectory must supply rules for building sources it contributes
tinyusb-0.20.0/src/portable/raspberrypi/rp2040/%.o tinyusb-0.20.0/src/portable/raspberrypi/rp2040/%.su tinyusb-0.20.0/src/portable/raspberrypi/rp2040/%.cyclo: ../tinyusb-0.20.0/src/portable/raspberrypi/rp2040/%.c tinyusb-0.20.0/src/portable/raspberrypi/rp2040/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Zappvion/Documents/PROJETS_ELO/ft8-radio/5_Programmation/F446_RX_SDR_USB_Band/tinyusb-0.20.0/src" -I"C:/Users/Zappvion/Documents/PROJETS_ELO/ft8-radio/5_Programmation/F446_RX_SDR_USB_Band/tinyusb-0.20.0/src/device" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-portable-2f-raspberrypi-2f-rp2040

clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-portable-2f-raspberrypi-2f-rp2040:
	-$(RM) ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/dcd_rp2040.cyclo ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/dcd_rp2040.d ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/dcd_rp2040.o ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/dcd_rp2040.su ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/hcd_rp2040.cyclo ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/hcd_rp2040.d ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/hcd_rp2040.o ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/hcd_rp2040.su ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/rp2040_usb.cyclo ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/rp2040_usb.d ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/rp2040_usb.o ./tinyusb-0.20.0/src/portable/raspberrypi/rp2040/rp2040_usb.su

.PHONY: clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-portable-2f-raspberrypi-2f-rp2040

