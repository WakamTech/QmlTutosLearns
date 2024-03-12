import QtQuick
import QtQuick.Effects

Component {
    Item {

        Rectangle {
            id: boutonRetourPage_1
            color: "blue"
            radius: 16

            width: 80; height: 24

            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 16
            anchors.leftMargin: 16

            Text {
                id: texteDeBienvenu
                text: "retour"
                color: "white"
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    maStackView.pop()
                }
            }
        }

        Text {
            id: presentation
            text: "Voici la liste des plus beaux chiens au monde"
            anchors.horizontalCenter: parent.horizontalCenter

            anchors.top: boutonRetourPage_1.bottom
            anchors.topMargin: 36
        }

        ListView {
            id: maListeView

            width: parent.width

            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: presentation.bottom
            anchors.topMargin: 24

            clip: true

            model:  listDesImages
            delegate: Rectangle {
                width: maListeView.width
                height: width

                Image {
                    id: imageID
                    source: imageURL
                    anchors.centerIn: parent
                    width: parent.width * 0.9
                    height: width
                }

                MultiEffect {
                    source: imageID
                    anchors.fill: imageID

                    shadowColor: "#000000"
                    shadowBlur: 1
                    shadowOpacity: 0.75
                    shadowVerticalOffset:4
                    shadowHorizontalOffset: 0
                    shadowEnabled: true
                }
            }

            ListModel {
                id: listDesImages
                ListElement {imageURL: "qrc:/Images/chien_1.jpg"}
                ListElement {imageURL: "qrc:/Images/chien_2.jpg"}
                ListElement {imageURL: "qrc:/Images/chien_3.jpg"}
                ListElement {imageURL: "qrc:/Images/chien_4.jpg"}
                ListElement {imageURL: "qrc:/Images/chien_5.jpg"}
                ListElement {imageURL: "qrc:/Images/chien_6.jpg"}
                ListElement {imageURL: "qrc:/Images/chien_7.jpg"}
                ListElement {imageURL: "qrc:/Images/chien_8.jpg"}
                ListElement {imageURL: "qrc:/Images/chien_9.jpg"}
                ListElement {imageURL: "qrc:/Images/chien_10.jpg"}
            }
        }
    }
}
