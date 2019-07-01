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

import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import AGL.Demo.Controls 1.0

ApplicationWindow {
    id: root

    width: 1080 * container.scale
    height: 1487 * container.scale

    Connections {
        target: messaging

        onNotificationEvent: {
            notificationModel.append({"name": message.sender.fn, "message": message.message })
            notificationView.currentIndex = notificationModel.count - 1
        }
    }

    ListModel {
        id: notificationModel
    }

    Item {
        id: container
        width: 1080
        height: 1487
        scale: screenInfo.scale_factor()
        anchors.centerIn: parent
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        // ----- Childs
        Label {
            id: title
            font.pixelSize: 48
            text: "Notifications"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        ListView {
            id: notificationView
            model: notificationModel

            anchors.margins: 50
            anchors.top: title.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            spacing: 40

            highlight: Rectangle {
                color: "transparent"
                radius: 5
                border.color: "white"
                border.width: 1
            }
            highlightFollowsCurrentItem: true

            delegate: Notification { }
        }
    }
}
