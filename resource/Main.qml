import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Effects
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material

import StatusBarColorChanger 1.0


ApplicationWindow {
    id: mainWindow
    width: 319
    height: 690
    visible: true
    color: "white"

    title: qsTr("Hello World")

    Material.theme: Material.LightBlue
    Material.accent: Material.LightBlue

    StatusBarColorChanger {
        id: statusBarColorChanger

        Component.onCompleted: {
            statusBarColorChanger.changeStatusBarColor("#1783ED")
        }
    }

    Drawer {
        id: drawer
        width: 0.75 * mainWindow.width
        height: mainWindow.height


        background: Rectangle {
            radius: 24
            color: "lightblue"

            width: parent.width + radius
            height: parent.height
            x: - radius
        }

        Text {
            id: textMenu
            text: "Je suis un menu"

            anchors.centerIn: parent
        }
    }



    Grid {
        id: grid
        rows: 2
        columns: 2

        anchors.centerIn: parent
        width: parent.width * 0.8
        height: width

        spacing: 8

        Item {
            width: (grid.width - 8) / 2; height: width

            Rectangle {
                anchors.fill: parent

                Image {
                    id: imageMTN
                    source: "qrc:/Images/MTN.png"

                    anchors.fill: parent
                    asynchronous: true
                    fillMode: Image.PreserveAspectCrop

                    layer.enabled: true
                    layer.effect: OpacityMask{
                        maskSource: Item{
                            width: imageMTN.width
                            height: imageMTN.height
                            Rectangle{
                                anchors.fill: parent
                                radius: 24
                            }
                        }
                    }
                }
            }
        }

        Item {
            width: (grid.width - 8) / 2; height: width

            Rectangle {
                anchors.fill: parent

                Image {
                    id: imageMOOV
                    source: "qrc:/Images/MOOV.png"

                    anchors.fill: parent
                    asynchronous: true
                    fillMode: Image.PreserveAspectCrop

                    layer.enabled: true
                    layer.effect: OpacityMask{
                        maskSource: Item{
                            width: imageMOOV.width
                            height: imageMOOV.height
                            Rectangle{
                                anchors.fill: parent
                                radius: 24
                            }
                        }
                    }
                }
            }
        }

        Item {
            width: (grid.width - 8) / 2; height: width

            Rectangle {
                anchors.fill: parent

                Image {
                    id: imageCeltis
                    source: "qrc:/Images/Celtis.png"

                    anchors.fill: parent
                    asynchronous: true
                    fillMode: Image.PreserveAspectCrop

                    layer.enabled: true
                    layer.effect: OpacityMask{
                        maskSource: Item{
                            width: imageCeltis.width
                            height: imageCeltis.height
                            Rectangle{
                                anchors.fill: parent
                                radius: 24
                            }
                        }
                    }
                }
            }
        }

        Item {
            width: (grid.width - 8) / 2; height: width

            Rectangle {
                anchors.fill: parent

                Image {
                    id: imageLogo
                    source: "qrc:/Images/logo.png"

                    anchors.fill: parent
                    asynchronous: true
                    fillMode: Image.PreserveAspectCrop

                    layer.enabled: true
                    layer.effect: OpacityMask{
                        maskSource: Item{
                            width: imageLogo.width
                            height: imageLogo.height
                            Rectangle{
                                anchors.fill: parent
                                radius: 24
                            }
                        }
                    }
                }
            }
        }

    }
    Item {
        id: buttonItem
        width: 230
        height: 48

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 16

        Rectangle {
            id: button

            color: "#3357FF"
            radius: 8

            anchors.fill: parent

            Text {
                text: "Open Menu"
                anchors.centerIn: parent
                color: "white"
                font.pixelSize: 24
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    drawer.open()
                }
            }
        }

        MultiEffect {
            source: button
            anchors.fill: button

            shadowColor: "#000000"
            shadowBlur: 1
            shadowOpacity: 0.75
            shadowVerticalOffset:0
            shadowHorizontalOffset: 2
            shadowEnabled: true
        }
    }
}
