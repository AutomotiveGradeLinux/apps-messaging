TARGET = messaging
QT = quickcontrols2

SOURCES = main.cpp

CONFIG += link_pkgconfig
PKGCONFIG += qtappfw-bt-map libafbwsc

CONFIG(release, debug|release) {
    QMAKE_POST_LINK = $(STRIP) --strip-unneeded $(TARGET)
}

RESOURCES += \
    Messaging.qrc \
    images/images.qrc

include(app.pri)
