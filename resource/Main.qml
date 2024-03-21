import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Effects
import Qt5Compat.GraphicalEffects

import StatusBarColorChanger 1.0


ApplicationWindow {
    id: mainWindow
    width: 319
    height: 690
    visible: true
    color: "white"

    title: qsTr("Hello World")


    StatusBarColorChanger {
        id: statusBarColorChanger

        Component.onCompleted: {
            statusBarColorChanger.changeStatusBarColor("#1783ED")
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
}
