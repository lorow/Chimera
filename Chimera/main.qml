import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 800
    height: 500
    color: "#00ffffff"
    flags: Qt.FramelessWindowHint |
           Qt.WindowMinimizeButtonHint |
           Qt.Window
    title: qsTr("Hello World")

    Rectangle {
        id: background
        width: 800
        height: 500
        color: "#ffffff"
        border.width: 0

        Image {
            id: image
            width: 800
            height: 500
            opacity: 1
            fillMode: Image.PreserveAspectCrop
            source: "Images/background.png"
        }

        Rectangle {
            id: logoSection
            width: 326
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#2ec2df"
                }

                GradientStop {
                    position: 0.488
                    color: "#7851dc"
                }

                GradientStop {
                    position: 0.967
                    color: "#af06f0"
                }

                GradientStop {
                    position: 1.003
                    color: "#b533e7"
                }

            }
            border.width: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Text {
                id: text1
                x: 0
                y: 264
                width: 326
                height: 33
                color: "#ffffff"
                text: qsTr("Chimera")
                font.family: "font/roboto/Roboto-bold.ttf"
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 30
            }

            Text{
                id: text2
                x: 0
                y: 303
                width: 326
                height: 33
                color: "#ffffff"
                text: qsTr("Hello there!")
                font.family: "font/roboto/Roboto-Thin.ttf"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 18
            }
        }

        Rectangle {
            id: loginSection
            x: 326
            y: 0
            width: 474
            color: "#ffffff"
            radius: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            border.width: 0
            anchors.left: logoSection.right
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            TextInput {
                id: textInput
                x: 52
                y: 101
                width: 311
                height: 31
                color: "#9c9a9a"
                text: qsTr("Login")
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 13
                topPadding: -2
                echoMode: TextInput.Normal
                selectionColor: "#32b2ff"
                font.capitalization: Font.AllLowercase
                horizontalAlignment: Text.AlignLeft

                Rectangle {
                    id: rectangle
                    y: 21
                    height: 2
                    color: "#b6b2b2"
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                }
            }

            TextInput {
                id: textInput1
                x: 52
                y: 157
                width: 312
                height: 31
                color: "#9c9a9a"
                text: qsTr("Password")
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                selectionColor: "#32b2ff"
                font.pointSize: 13
                horizontalAlignment: Text.AlignLeft
                Rectangle {
                    id: rectangle1
                    y: 21
                    height: 2
                    color: "#b9b8b8"
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                }
                topPadding: -2
                echoMode: TextInput.Password
                font.capitalization: Font.AllLowercase
            }

            Rectangle {
                id: rectangle2
                x: 164
                y: 207
                width: 33
                height: 33
                color: "#f67b00"
                radius: 17
            }

            Rectangle {
                id: rectangle3
                x: 220
                y: 207
                width: 33
                height: 33
                color: "#45d6ff"
                radius: 17
            }

            Rectangle {
                id: rectangle4
                x: 277
                y: 207
                width: 33
                height: 33
                color: "#00f67b"
                radius: 17
            }
        }
    }
}
