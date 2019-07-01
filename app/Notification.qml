import QtQuick 2.6
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0

Item {
    height: msg.height
    width: parent.width
    Column {
        id: msg
        anchors.left: parent.left
        anchors.right: parent.right
        Label {
            text: '<b>' + name + '</b>'
            font.pixelSize: 42
            wrapMode: Text.WordWrap
        }
        Label {
            text: message
            anchors.margins: 5
            anchors.left: parent.left
            anchors.right: parent.right
            font.pixelSize: 32
            wrapMode: Text.WordWrap
        }
    }
}
