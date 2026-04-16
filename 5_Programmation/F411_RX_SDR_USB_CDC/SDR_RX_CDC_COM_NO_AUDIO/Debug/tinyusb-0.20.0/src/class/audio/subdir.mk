################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tinyusb-0.20.0/src/class/audio/audio_device.c 

OBJS += \
./tinyusb-0.20.0/src/class/audio/audio_device.o 

C_DEPS += \
./tinyusb-0.20.0/src/class/audio/audio_device.d 


# Each subdirectory must supply rules for building sources it contributes
tinyusb-0.20.0/src/class/audio/%.o tinyusb-0.20.0/src/class/audio/%.su tinyusb-0.20.0/src/class/audio/%.cyclo: ../tinyusb-0.20.0/src/class/audio/%.c tinyusb-0.20.0/src/class/audio/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Zappvion/Documents/PROJETS_ELO/ft8-radio/5_Programmation/F411_RX_SDR_USB_CDC/SDR_RX_CDC_COM_NO_AUDIO/tinyusb-0.20.0/src" -I"C:/Users/Zappvion/Documents/PROJETS_ELO/ft8-radio/5_Programmation/F411_RX_SDR_USB_CDC/SDR_RX_CDC_COM_NO_AUDIO/tinyusb-0.20.0/src/device" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-class-2f-audio

clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-class-2f-audio:
	-$(RM) ./tinyusb-0.20.0/src/class/audio/audio_device.cyclo ./tinyusb-0.20.0/src/class/audio/audio_device.d ./tinyusb-0.20.0/src/class/audio/audio_device.o ./tinyusb-0.20.0/src/class/audio/audio_device.su

.PHONY: clean-tinyusb-2d-0-2e-20-2e-0-2f-src-2f-class-2f-audio

