

BOARD_TAG    = teensy35
F_CPU=120000000

ARDUINO_MAKEFILE_VERSION = Teensy.mk

ARDUINO_LIBS =

USER_LIB_PATH=libraries
#ARDUINO_LIB_PATH=tools/arduino-teensy/libraries/
#ARDUINO_PLATFORM_LIB_PATH=tools/arduino-teensy/hardware/teensy/avr/libraries/


#CFLAGS += -Werror=conversion
#CXXFLAGS += -Werror=conversion
CFLAGS += -Wall
CXXFLAGS += -Wall

#CXXFLAGS_STD = -std=gnu++14            //may cause - undefined reference to `operator delete(void*, unsigned int)'

