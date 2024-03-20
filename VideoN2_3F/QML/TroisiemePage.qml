import QtQuick
import QtQuick.Effects
import Qt5Compat.GraphicalEffects

Component {
    Item {
        Rectangle {
            id: boutonRetourPage_2
            color: "lightblue"
            radius: 500

            width: 36; height: 36

            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 16
            anchors.leftMargin: 16

            Image {
                id: imageRetourPage_2
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


        Text {
            id: presentation
            text: "Voici la liste des plus beaux chiens au monde"
            anchors.horizontalCenter: parent.horizontalCenter

            anchors.top: boutonRetourPage_2.bottom
            anchors.topMargin: 36
        }

        ListView {
            id: listePage_3
            width: parent.width

            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: presentation.bottom
            anchors.topMargin: 24

            clip: true

            spacing: 16

            model: listModel

            delegate: Item {
                width: parent.width
                height: 64

                Rectangle {
                    id: rectangleImage
                    width: parent.width * 0.9
                    height: parent.height
                    anchors.horizontalCenter: parent.horizontalCenter
                    color: "white"
                    radius: 16

                    Text {
                        id: pourLeNom
                        text: nom

                        anchors.top: parent.top
                        anchors.left: parent.left
                        anchors.leftMargin: 16
                        anchors.topMargin: 4
                    }

                    Text {
                        id: pourLePrenom
                        text: prenom
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.leftMargin: 16
                        anchors.bottomMargin: 4
                    }

                    Image {
                        id: photoDeProfil
                        width: parent.height * 0.8
                        height: width

                        source: profil

                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.rightMargin: 16

                        asynchronous: true
                        fillMode: Image.PreserveAspectCrop

                        layer.enabled: true
                        layer.effect: OpacityMask{
                            maskSource: Item{
                                width: photoDeProfil.width
                                height: photoDeProfil.height
                                Rectangle{
                                    anchors.fill: parent
                                    radius: 500
                                }
                            }
                        }
                    }
                }

                MultiEffect {
                    source: rectangleImage
                    anchors.fill: rectangleImage

                    shadowColor: "#000000"
                    shadowBlur: 1
                    shadowOpacity: 0.2
                    shadowVerticalOffset: 4
                    shadowHorizontalOffset: 0
                    shadowEnabled: true
                }
            }

            ListModel {
                id: listModel

                ListElement {nom: "Nom 1"; prenom: "Prenom 1"; profil: "qrc:/Images/chien_10.jpg"}
                ListElement {nom: "Nom 2"; prenom: "Prenom 2"; profil: "qrc:/Images/chien_10.jpg"}
                ListElement {nom: "Nom 3"; prenom: "Prenom 3"; profil: "qrc:/Images/chien_10.jpg"}
                ListElement {nom: "Nom 4"; prenom: "Prenom 4"; profil: "qrc:/Images/chien_10.jpg"}
                ListElement {nom: "Nom 5"; prenom: "Prenom 5"; profil: "qrc:/Images/chien_10.jpg"}
                ListElement {nom: "Nom 6"; prenom: "Prenom 6"; profil: "qrc:/Images/chien_10.jpg"}
                ListElement {nom: "Nom 7"; prenom: "Prenom 7"; profil: "qrc:/Images/chien_10.jpg"}
                ListElement {nom: "Nom 8"; prenom: "Prenom 8"; profil: "qrc:/Images/chien_10.jpg"}
                ListElement {nom: "Nom 9"; prenom: "Prenom 9"; profil: "qrc:/Images/chien_10.jpg"}
                ListElement {nom: "Nom 10"; prenom: "Prenom 10"; profil: "qrc:/Images/chien_10.jpg"}

            }
        }

    }
}
