message(cm-lib project dir: $${PWD})

QT -= gui

TARGET = cm-lib

TEMPLATE = lib

CONFIG += c++14

DEFINES += CMLIB_LIBRARY

INCLUDEPATH += source

SOURCES += source/models/client.cpp\
    source/controllers/master-controller.cpp \
    source/framework/command.cpp


HEADERS += source/cm-lib_global.h \
    source/controllers/navigation-controller.h \
    source/framework/command.h \
    source/models/client.h \
    source/controllers/master-controller.h

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

DESTDIR = $$PWD/../binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui
