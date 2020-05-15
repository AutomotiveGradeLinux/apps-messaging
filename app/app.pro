TARGET = messaging
QT = quickcontrols2 websockets

SOURCES = main.cpp

CONFIG += link_pkgconfig
PKGCONFIG += libhomescreen qtappfw-bt-map libafbwsc

RESOURCES += \
    Messaging.qrc \
    images/images.qrc

include(app.pri)
