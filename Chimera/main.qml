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

        Rectangle {
            id: logoSection
            width: 326
            Rectangle {
                id: backgroundFIller
                color: "#ffffff"
                anchors.fill: parent

                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#39e2eb"
                    }

                    GradientStop {
                        position: 0.581
                        color: "#6744df"
                    }

                    GradientStop {
                        position: 0.789
                        color: "#7b06f0"
                    }

                    GradientStop {
                        position: 0.934
                        color: "#9506f0"
                    }

                    GradientStop {
                        position: 1.003
                        color: "#8405d5"
                    }

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
                id: appName
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
                id: subText
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

            Text {
                id: loginText
                width: 58
                height: 38
                color: "#18d4fd"
                text: qsTr("Login")
                anchors.top: parent.top
                anchors.topMargin: 15
                font.family: "font/roboto/Roboto-Thin.ttf"
                anchors.left: parent.left
                anchors.leftMargin: 14
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 20
            }

            Text {
                id: registerButton
                y: -2
                width: 94
                height: 38
                color: "#c6c6c6"
                text: qsTr("/ Register")
                anchors.left: loginText.right
                anchors.leftMargin: 0
                font.family: "font/roboto/Roboto-Thin.ttf"
                horizontalAlignment: Text.AlignHCenter
                anchors.topMargin: 15
                anchors.top: parent.top
                font.pixelSize: 20
                verticalAlignment: Text.AlignVCenter
            }


            TextInput {
                id: loginInput
                x: 52
                y: 146
                width: 320
                height: 31
                color: "#9c9a9a"
                text: qsTr("Login")
                font.family: "font/roboto/Roboto-Thin.ttf"
                anchors.horizontalCenterOffset: 3
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
                id: passwordInput
                x: 52
                y: 198
                width: 312
                height: 31
                color: "#9c9a9a"
                text: qsTr("Password")
                font.family: "font/roboto/Roboto-Thin.ttf"
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
                id: github
                x: 137
                y: 275
                width: 41
                height: 41
                color: "#ffffff"
                radius: 21
                border.color: "#903ef7"

                anchors.right: bitbucket.left
                anchors.rightMargin: 14
                border.width: 2

                Image {
                    id: image1
                    x: 0
                    y: 0
                    width: 31
                    height: 31
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    smooth: true
                    fillMode: Image.Stretch
                    antialiasing: true
                    source: "Images/logos/github.svg"
                    sourceSize.width: parent.width -2
                    sourceSize.height: parent.height -2
                }
                ColorOverlay {
                    anchors.fill: image1
                    source: image1
                    color: "#3b4249"
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                }
            }

            Rectangle {
                id: bitbucket
                x: 217
                y: 275
                width: 41
                height: 41
                color: "#ffffff"
                radius: 21
                border.width: 2
                border.color: "#00b1f5"
                Image {
                    id: image2
                    x: 0
                    y: 0
                    width: 31
                    height: 31
                    smooth: true
                    source: "Images/logos/github.svg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    antialiasing: true
                    anchors.verticalCenter: parent.verticalCenter
                    sourceSize.height: parent.height -2
                    sourceSize.width: parent.width -2
                    fillMode: Image.Stretch
                }

                ColorOverlay {
                    color: "#3b4249"
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    source: image2
                    anchors.fill: image2
                }
            }

            Rectangle {
                id: gitlab
                y: 275
                width: 41
                height: 41
                color: "#ffffff"
                radius: 21
                anchors.left: bitbucket.right
                anchors.leftMargin: 14
                border.width: 2
                border.color: "#00b1f5"
                Image {
                    id: image3
                    x: 0
                    y: 0
                    width: 31
                    height: 31
                    smooth: true
                    source: "Images/logos/github.svg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    antialiasing: true
                    sourceSize.height: parent.height -2
                    anchors.verticalCenter: parent.verticalCenter
                    sourceSize.width: parent.width -2
                    fillMode: Image.Stretch
                }

                ColorOverlay {
                    color: "#3b4249"
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    source: image3
                    anchors.fill: image3
                }
            }
            Rectangle {
                id: loginButton
                x: 137
                y: 351
                width: 200
                height: 32
                color: "#0042c7ff"
                radius: 16
                border.color: "#44ccff"
                border.width: 2

                Text {
                    id: text3
                    color: "#44ccff"
                    text: qsTr("Login")
                    font.family: "font/roboto/Roboto-Thin.ttf"
                    styleColor: "#ffffff"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    anchors.bottom: parent.bottom
                    font.pixelSize: 15
                }
            }

            Rectangle {
                id: exit
                x: 446
                width: 18
                height: 18
                color: "#ffffff"
                anchors.right: parent.right
                anchors.rightMargin: 10
                anchors.top: parent.top
                anchors.topMargin: 10

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
                }
            }

            Rectangle {
                id: exit1
                x: 446
                y: -7
                width: 18
                height: 18
                color: "#ffffff"
                anchors.top: parent.top
                Rectangle {
                    id: rectangle5
                    width: 14
                    height: 2
                    color: "#a09b9b"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 4
                    rotation: 0
                }

                MouseArea {
                    id: mouseArea1
                    anchors.fill: parent
                }
                anchors.topMargin: 10
                anchors.right: exit.left
                anchors.rightMargin: 10
            }
        }
    }
}
