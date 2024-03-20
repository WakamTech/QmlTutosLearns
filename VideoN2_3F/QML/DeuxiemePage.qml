import QtQuick
import QtQuick.Effects
import Qt5Compat.GraphicalEffects

Component {
    Item {

        Rectangle {
            id: boutonRetourPage_1
            color: "lightblue"
            radius: 500

            width: 36; height: 36

            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 16
            anchors.leftMargin: 16

            Image {
                id: imageRetour
                source: "qrc:/Images/chevron-left.png"
                anchors.fill: parent

                asynchronous: true
                fillMode: Image.PreserveAspectCrop
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    maStackView.pop()
                }
            }
        }

        Rectangle {
            id: allerPage_3
            color: "lightblue"
            radius: 500

            width: 36; height: 36

            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 16
            anchors.rightMargin: 16

            Image {
                id: imageAllerPage_3
                source: "qrc:/Images/chevron-right.png"
                anchors.fill: parent

                asynchronous: true
                fillMode: Image.PreserveAspectCrop
            }

            MouseArea {
                anchors.fill: parent

                onClicked: {
                    maStackView.push(troisiemePage)
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


                Rectangle {
                    id: rectDeLImage
                    width: parent.width * 0.9
                    height: width
                    anchors.centerIn: parent
                    radius: 24

                    Image {
                        id: imageID
                        source: imageURL
                        anchors.fill: parent

                        asynchronous: true
                        fillMode: Image.PreserveAspectCrop

                        layer.enabled: true
                        layer.effect: OpacityMask{
                            maskSource: Item{
                                width: imageID.width
                                height: imageID.height
                                Rectangle{
                                    anchors.fill: parent
                                    radius: rectDeLImage.radius
                                }
                            }
                        }
                    }
                }

                MultiEffect {
                    source: rectDeLImage
                    anchors.fill: rectDeLImage

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
