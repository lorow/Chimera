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
}
