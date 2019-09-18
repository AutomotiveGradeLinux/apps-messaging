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

Item {
    id: root

    function setNumber(number) {
        recipient.text = number
        message.focus = true
    }

    function clearFields() {
        recipient.text = ''
        message.text = ''
    }

    Column {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 60

        Row {
            Label {
                font.pixelSize: 48
                text: "Recipient: "
            }

            TextArea {
                id: recipient
                font.pixelSize: 48
                Layout.fillWidth: true
                placeholderText: "Enter recipient #"
                color: "white"
            }
        }

        Row {
            id: msg_txt
            Label {
                id: msg_label
                font.pixelSize: 48
                text: "Message:  "
            }
            TextArea {
                id: message
                font.pixelSize: 48
                width: root.width - (2 * msg_label.width)
                wrapMode: TextEdit.WrapAnywhere
                placeholderText: "Enter message here!"
                color: "white"
            }
        }

        Button {
                anchors.horizontalCenter: parent.horizontalCenter
                height: 100
                width: msg_txt.width / 2
                font.pixelSize: 48
                text: "Send Message"

                onClicked: {
                    if (message.text && recipient.text) {
                        messaging.compose(recipient.text, message.text);
                        root.clearFields();
                    }
                }
        }
    }
}
