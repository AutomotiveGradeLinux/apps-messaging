/*
 * Copyright (C) 2019 Konsulko Group
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import QtQuick 2.11
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.4
import AGL.Demo.Controls 1.0

Item {
    height: msg.height
    width: parent.width
    Column {
        id: msg
        anchors.left: parent.left
        anchors.right: parent.right

        ImageButton {
            padding: 10
            offImage: '../images/HMI_Settings_X.svg'
            onClicked: notificationModel.remove(index)
        }
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
