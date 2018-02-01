import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Item {
    id: root

    signal loginClicked          (var indexOfScreen)
    signal skipClicked           (var indexOfScreen)
    signal forgotPasswordClicked ()

    Text {
        id: loginText

        font.family: "font/roboto/Roboto-Thin.ttf"
        font.pixelSize: 20

        anchors.left: parent.left
        anchors.top: parent.top

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 14
        anchors.topMargin: 20

        text: qsTr("Login")

        color: "#18d4fd"

        height: 38
        width: 58
    }

    Text {
        id: registerTextButton

        font.family: "font/roboto/Roboto-Thin.ttf"
        font.pixelSize: 20

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.left: loginText.right
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.leftMargin: 0

        text: qsTr("/ Register")

        color: "#c6c6c6"

        height: 38
        width: 94
        y: -2

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Register")
            }
        }
    }

    TextInput {
        id: loginInput
        x: 72
        y: 130
        width: 332
        height: 31
        color: "#9c9a9a"
        text: qsTr("Login")
        font.family: "font/roboto/Roboto-Thin.ttf"
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
        x: 72
        y: 0
        width: 332
        height: 31
        color: "#9c9a9a"
        text: qsTr("Password")
        anchors.top: loginInput.bottom
        anchors.topMargin: 23
        font.family: "font/roboto/Roboto-Thin.ttf"
        selectionColor: "#32b2ff"
        font.pointSize: 13
        horizontalAlignment: Text.AlignLeft
        topPadding: -2
        echoMode: TextInput.Password
        font.capitalization: Font.AllLowercase

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
            source: "../../../Images/logos/github.png"
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
            source: "../../../Images/logos/github.png"
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
            source: "../../../Images/logos/github.png"
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

        MouseArea{
            anchors.fill: parent
            onClicked: {
                root.loginClicked(1);
            }
        }
    }

    Text {
        id: forgotPasswordButton
        y: 471
        width: 95
        height: 22
        color: "#c6c6c6"
        text: qsTr("Forgot password?")
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 11
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: "font/roboto/Roboto-Thin.ttf"
        font.pixelSize: 12

        MouseArea{
            anchors.fill: parent
            onClicked: {
                root.skipClicked(1)
            }
        }
    }

    Text {
        id: skipButton
        x: -1
        y: 471
        width: 33
        height: 22
        color: "#c6c6c6"
        text: qsTr("Skip")
        anchors.left: parent.left
        horizontalAlignment: Text.AlignHCenter
        anchors.bottom: parent.bottom
        font.family: "font/roboto/Roboto-Thin.ttf"
        anchors.leftMargin: 433
        verticalAlignment: Text.AlignVCenter
        anchors.bottomMargin: 11
        font.pixelSize: 12

        MouseArea{
            anchors.fill: parent
            onClicked: {
                root.forgotPasswordClicked()
            }
        }
    }
}
