import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

import "./screens/initialScreen"

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 800
    height: 500
    color: "#00ffffff"
    flags: Qt.FramelessWindowHint |
           Qt.WindowMinimizeButtonHint |
           Qt.Window
    title: qsTr("Chimera! Time to rice up!")


    Rectangle {
        id: background
        anchors.fill: parent
        color: "#ffffff"
        border.width: 0

        LoginAndConfigePage{
            id: loginForm
            anchors.fill: parent

            onMouseMoved:{
                applicationWindow.x += delta.x;
                applicationWindow.y += delta.y;
            }

            onMinizeClicked: {
                applicationWindow.showMinimized()
            }

            loginSection.loginPage.onLoginClicked: {
                console.log(indexOfScreen)
            }
        }
    }
}
