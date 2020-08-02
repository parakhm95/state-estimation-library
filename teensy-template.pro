#-------------------------------------------------
#
# Teensy Template
#
#-------------------------------------------------

#
# Following environment variables have to be set:
# ARDMK_DIR     Arduino Makefile directory
# ARDUINO_DIR   Arduino IDE directory (with Teensyduino installed)
#

SOURCES += $$PWD/*.cpp $$PWD/*.c $$PWD/*.ino 

HEADERS += $$PWD/*.h

OTHER_FILES += Makefile

include(config.mk)

for(lib, ARDUINO_LIBS) {
    lib_found =
    exists($$absolute_path($$USER_LIB_PATH/$$lib)) {
        lib_found += FOUND
        INCLUDEPATH += $$absolute_path($$USER_LIB_PATH/$$lib)
    }
    exists($$absolute_path($$ARDUINO_LIB_PATH/$$lib)) {
        lib_found += FOUND
        INCLUDEPATH += $$absolute_path($$ARDUINO_LIB_PATH/$$lib)
    }
    exists($$absolute_path($$ARDUINO_PLATFORM_LIB_PATH/$$lib)) {
        lib_found += FOUND
        INCLUDEPATH += $$absolute_path($$ARDUINO_PLATFORM_LIB_PATH/$$lib)
    }
    count(lib_found, 0) {
        message(Library $$lib not found.)
    }
}

#qmake doc
# http://doc.qt.io/qt-5/qmake-manual.html
# http://doc.qt.io/qt-5/qmake-function-reference.html#absolute-path-path-base
# http://doc.qt.io/qt-5/qmake-test-function-reference.html#infile-filename-var-val
