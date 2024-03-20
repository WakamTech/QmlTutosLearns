import QtQuick
import QtQuick.Controls
import QtQuick.Effects
import Qt5Compat.GraphicalEffects

Component {
    Item {

        Image {
            id: imageDeBienvenu
            source: "qrc:/Images/logo.png"

            width: parent.width * 0.8 ; height: width

            anchors.centerIn: parent

            asynchronous: true
            fillMode: Image.PreserveAspectCrop

            layer.enabled: true
            layer.effect: OpacityMask{
                maskSource: Item{
                    width: imageDeBienvenu.width
                    height: imageDeBienvenu.height
                    Rectangle{
                        anchors.fill: parent
                        radius: 100
                    }
                }
            }
        }

        Rectangle {
            id: boutonBienvenu
            color: "#33D4FF"
            radius: 16

            width: 150; height: 48

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 24

            Text {
                id: texteDeBienvenu
                text: "Bienvenu"

                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    maStackView.push(deuxiemePage)
                }
            }
        }

        MultiEffect {
            source: boutonBienvenu
            anchors.fill: boutonBienvenu

            shadowColor: "#000000"
            shadowBlur: 1
            shadowOpacity: 0.95
            shadowVerticalOffset: 8
            shadowHorizontalOffset: 8
            shadowEnabled: true
        }
    }
}
