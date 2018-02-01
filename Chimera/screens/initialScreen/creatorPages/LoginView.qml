import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

import "./pages"

Item {
    id: root

    property int currentIndex: 0
    property alias loginPage : loginPage

    width: 474
    height: 500
    Rectangle {
        id: background
        width: 474
        height: 500
        anchors.fill: parent
        border.width: 0
        color: "#ffffff"
        radius: 0
    }

    SwipeView {
        id: formSwipe
        currentIndex: root.currentIndex
        anchors.fill: parent
        interactive: false

        LoginPage{
            id: loginPage
            anchors.fill: parent
        }

    }
}
