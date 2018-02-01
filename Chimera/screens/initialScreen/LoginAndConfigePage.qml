import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

import "./creatorPages"
import "./logos"

Item {
    id: root
    width: 800
    height: 500
    property alias loginSection: loginSection

    signal mouseMoved(var delta)
    signal minizeClicked()


    LogoView{
        id: logoSection
        width: 326
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.rightMargin: 172
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
    }

    LoginView{
        id: loginSection
        anchors.left: logoSection.right
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
    }

    MouseArea {
        id: moveableArea

        height: 26
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        property variant clickPos: "1,1"

        onPressed: {
            clickPos  = Qt.point(mouse.x,mouse.y)
        }

        onPositionChanged: {
            root.mouseMoved(Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y))
        }
    }

    Rectangle {
        id: exit
        x: 443
        width: 18
        height: 18
        color: "#ffffff"
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.top: parent.top
        anchors.topMargin: 8

        Rectangle {
            id: rectangle3
            width: 2
            height: 14
            color: "#a09b9b"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            rotation: 45
        }

        Rectangle {
            id: rectangle4
            x: 2
            y: -1
            width: 2
            height: 14
            color: "#a09b9b"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            rotation: -45
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent

            onClicked: {
                Qt.quit()
            }
        }
    }

    Rectangle {
        id: minimize
        x: 419
        width: 18
        height: 18
        color: "#ffffff"

        anchors.right: exit.left
        anchors.top: parent.top
        anchors.rightMargin: 8
        anchors.topMargin: 8

        Rectangle {
            id: rectangle5
            width: 14
            height: 2
            color: "#a09b9b"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 4
        }

        MouseArea {
            id: mouseArea1
            anchors.fill: parent

            onClicked: {
                root.minizeClicked()
            }
        }
    }
}
