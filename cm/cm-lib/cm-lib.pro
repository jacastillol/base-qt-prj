message(cm-lib project dir: $${PWD})

QT -= gui

TARGET = cm-lib

TEMPLATE = lib

CONFIG += c++14

DEFINES += CMLIB_LIBRARY

INCLUDEPATH += source

SOURCES += source/models/client.cpp\
    source/controllers/command-controller.cpp \
    source/controllers/master-controller.cpp \
    source/data/data-decorator.cpp \
    source/data/datetime-decorator.cpp \
    source/data/entity.cpp \
    source/data/enumerator-decorator.cpp \
    source/data/int-decorator.cpp \
    source/data/string-decorator.cpp \
    source/framework/command.cpp \
    source/models/address.cpp \
    source/models/appointment.cpp \
    source/models/contact.cpp


HEADERS += source/cm-lib_global.h \
    source/controllers/command-controller.h \
    source/controllers/navigation-controller.h \
    source/data/data-decorator.h \
    source/data/datetime-decorator.h \
    source/data/entity-collection.h \
    source/data/entity.h \
    source/data/enumerator-decorator.h \
    source/data/int-decorator.h \
    source/data/string-decorator.h \
    source/framework/command.h \
    source/models/address.h \
    source/models/appointment.h \
    source/models/client.h \
    source/controllers/master-controller.h \
    source/models/contact.h

include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)

DESTDIR = $$PWD/../binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui
