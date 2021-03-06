/* GCompris - ReadyButton.qml
 *
 * Copyright (C) 2014 Bruno Coudoin
 *
 * Authors:
 *   Bruno Coudoin <bruno.coudoin@gcompris.net>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.2
import GCompris 1.0

Rectangle {
    id: iamReady
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    border.color: "black"
    visible: true
    radius: 4
    smooth: true
    border.width: 2
    gradient: Gradient {
        GradientStop { position: 0.0; color: "#AAFFFFFF" }
        GradientStop { position: 0.9; color: "#AAFFFFFF" }
        GradientStop { position: 1.0; color: "#AACECECE" }
    }

    signal clicked

    Text {
        id: iamReadyText

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.bold: true
        font.pointSize: 18
        text: qsTr("I am Ready!")
        visible: iamReady.visible

        Component.onCompleted: {
            parent.width = width + 20
            parent.height = height + 10
        }
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            iamReady.visible = false
            iamReady.clicked()
        }
    }
}
