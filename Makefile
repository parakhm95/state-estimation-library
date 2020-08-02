

include config.mk

ifdef ARDMK_DIR
  echo $(error "ARDMK_DIR is defined by Makefile")
endif

ifdef ARDUINO_DIR
  echo $(error "ARDUINO_DIR is defined by Makefile")
endif

THIS_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

ARDMK_DIR=$(THIS_DIR)tools/Arduino-Makefile
ARDUINO_DIR=$(THIS_DIR)tools/arduino-teensy

ifndef ARDUINO_MAKEFILE_VERSION
	include $(ARDMK_DIR)/Arduino.mk 
else
	include $(ARDMK_DIR)/$(ARDUINO_MAKEFILE_VERSION)
endif
