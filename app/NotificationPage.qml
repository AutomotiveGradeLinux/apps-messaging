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
    id: root

    Connections {
        target: messaging

        onNotificationEvent: {
            notificationModel.append({"name": message.sender.fn, "number": message.sender.tel, "message": message.message })
            notificationView.currentIndex = notificationModel.count - 1
        }
    }

    ListModel {
        id: notificationModel
    }

    ListView {
        anchors.fill: parent
        anchors.margins: 20

        id: notificationView
        model: notificationModel

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
