import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

import "./logos"

Item {
    id: root
    property int currentIndex: 0

    Rectangle {
        id: logos
        anchors.fill: parent
        border.width: 0
        Rectangle {
            id: backgroundFiller
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

            SwipeView {
                id: logoSwipe
                currentIndex: root.currentIndex
                anchors.fill: parent
                interactive: false

                WelcomeLogo{
                    id: welcomeLogo
                }
            }
        }
    }
}
