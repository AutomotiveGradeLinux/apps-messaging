TARGET = messaging
QT = quickcontrols2 websockets

SOURCES = main.cpp

CONFIG += link_pkgconfig
PKGCONFIG += libhomescreen qlibwindowmanager qtappfw libafbwsc

RESOURCES += Messaging.qrc

include(app.pri)
