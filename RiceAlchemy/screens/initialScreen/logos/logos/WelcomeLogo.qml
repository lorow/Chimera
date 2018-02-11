import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Item {
    id: root
    Text {
        id: appName
        x: 0
        y: 335
        width: 326
        height: 33
        color: "#ffffff"
        text: qsTr("RiceAlchemy")
        font.family: "font/roboto/Roboto-bold.ttf"
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 30
    }

    Text{
        id: subText
        x: 0
        width: 326
        height: 33
        color: "#ffffff"
        text: qsTr("Rice Up!")
        anchors.top: appName.bottom
        anchors.topMargin: 6
        font.family: "font/roboto/Roboto-Thin.ttf"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 18
    }
}
