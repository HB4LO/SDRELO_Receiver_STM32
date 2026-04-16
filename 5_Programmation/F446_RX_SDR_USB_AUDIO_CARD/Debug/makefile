################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include tinyusb-0.20.0/src/typec/subdir.mk
-include tinyusb-0.20.0/src/portable/wch/subdir.mk
-include tinyusb-0.20.0/src/portable/valentyusb/eptri/subdir.mk
-include tinyusb-0.20.0/src/portable/ti/msp430x5xx/subdir.mk
-include tinyusb-0.20.0/src/portable/template/subdir.mk
-include tinyusb-0.20.0/src/portable/synopsys/dwc2/subdir.mk
-include tinyusb-0.20.0/src/portable/sunxi/subdir.mk
-include tinyusb-0.20.0/src/portable/st/typec/subdir.mk
-include tinyusb-0.20.0/src/portable/st/stm32_fsdev/subdir.mk
-include tinyusb-0.20.0/src/portable/sony/cxd56/subdir.mk
-include tinyusb-0.20.0/src/portable/renesas/rusb2/subdir.mk
-include tinyusb-0.20.0/src/portable/raspberrypi/rp2040/subdir.mk
-include tinyusb-0.20.0/src/portable/raspberrypi/pio_usb/subdir.mk
-include tinyusb-0.20.0/src/portable/ohci/subdir.mk
-include tinyusb-0.20.0/src/portable/nxp/lpc_ip3511/subdir.mk
-include tinyusb-0.20.0/src/portable/nxp/lpc17_40/subdir.mk
-include tinyusb-0.20.0/src/portable/nxp/khci/subdir.mk
-include tinyusb-0.20.0/src/portable/nuvoton/nuc505/subdir.mk
-include tinyusb-0.20.0/src/portable/nuvoton/nuc121/subdir.mk
-include tinyusb-0.20.0/src/portable/nuvoton/nuc120/subdir.mk
-include tinyusb-0.20.0/src/portable/nordic/nrf5x/subdir.mk
-include tinyusb-0.20.0/src/portable/mindmotion/mm32/subdir.mk
-include tinyusb-0.20.0/src/portable/microchip/samx7x/subdir.mk
-include tinyusb-0.20.0/src/portable/microchip/samg/subdir.mk
-include tinyusb-0.20.0/src/portable/microchip/samd/subdir.mk
-include tinyusb-0.20.0/src/portable/microchip/pic32mz/subdir.mk
-include tinyusb-0.20.0/src/portable/microchip/pic/subdir.mk
-include tinyusb-0.20.0/src/portable/mentor/musb/subdir.mk
-include tinyusb-0.20.0/src/portable/ehci/subdir.mk
-include tinyusb-0.20.0/src/portable/dialog/da146xx/subdir.mk
-include tinyusb-0.20.0/src/portable/chipidea/ci_hs/subdir.mk
-include tinyusb-0.20.0/src/portable/chipidea/ci_fs/subdir.mk
-include tinyusb-0.20.0/src/portable/bridgetek/ft9xx/subdir.mk
-include tinyusb-0.20.0/src/portable/analog/max3421/subdir.mk
-include tinyusb-0.20.0/src/host/subdir.mk
-include tinyusb-0.20.0/src/device/subdir.mk
-include tinyusb-0.20.0/src/common/subdir.mk
-include tinyusb-0.20.0/src/class/video/subdir.mk
-include tinyusb-0.20.0/src/class/vendor/subdir.mk
-include tinyusb-0.20.0/src/class/usbtmc/subdir.mk
-include tinyusb-0.20.0/src/class/net/subdir.mk
-include tinyusb-0.20.0/src/class/mtp/subdir.mk
-include tinyusb-0.20.0/src/class/msc/subdir.mk
-include tinyusb-0.20.0/src/class/midi/subdir.mk
-include tinyusb-0.20.0/src/class/hid/subdir.mk
-include tinyusb-0.20.0/src/class/dfu/subdir.mk
-include tinyusb-0.20.0/src/class/cdc/subdir.mk
-include tinyusb-0.20.0/src/class/bth/subdir.mk
-include tinyusb-0.20.0/src/class/audio/subdir.mk
-include tinyusb-0.20.0/src/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := F446_RX_SDR_USB_AUDIO_CARD
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
F446_RX_SDR_USB_AUDIO_CARD.elf \

MAP_FILES += \
F446_RX_SDR_USB_AUDIO_CARD.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
F446_RX_SDR_USB_AUDIO_CARD.list \


# All Target
all: main-build

# Main-build Target
main-build: F446_RX_SDR_USB_AUDIO_CARD.elf secondary-outputs

# Tool invocations
F446_RX_SDR_USB_AUDIO_CARD.elf F446_RX_SDR_USB_AUDIO_CARD.map: $(OBJS) $(USER_OBJS) C:\Users\Zappvion\Documents\PROJETS_ELO\ft8-radio\5_Programmation\F446_RX_SDR_USB_AUDIO_CARD\STM32F446RETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "F446_RX_SDR_USB_AUDIO_CARD.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\Zappvion\Documents\PROJETS_ELO\ft8-radio\5_Programmation\F446_RX_SDR_USB_AUDIO_CARD\STM32F446RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="F446_RX_SDR_USB_AUDIO_CARD.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

F446_RX_SDR_USB_AUDIO_CARD.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "F446_RX_SDR_USB_AUDIO_CARD.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) F446_RX_SDR_USB_AUDIO_CARD.elf F446_RX_SDR_USB_AUDIO_CARD.list F446_RX_SDR_USB_AUDIO_CARD.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
