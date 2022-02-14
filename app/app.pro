TEMPLATE = app
TARGET = messaging
QT = qml quickcontrols2
CONFIG += c++11 link_pkgconfig

SOURCES = main.cpp

PKGCONFIG += qtappfw-bt-map

RESOURCES += \
    Messaging.qrc \
    images/images.qrc

target.path = /usr/bin
target.files += $${OUT_PWD}/$${TARGET}
target.CONFIG = no_check_exist executable

INSTALLS += target
