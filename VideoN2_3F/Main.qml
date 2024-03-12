import QtQuick
import QtQuick.Window
import QtQuick.Controls

import "./QML"

ApplicationWindow {
    width: 319
    height: 690
    visible: true
    color: "white"

    title: qsTr("Hello World")

    StackView {
        id: maStackView
        initialItem: premierePage
        anchors.fill: parent
    }


    PremierePage {
        id: premierePage
    }

    DeuxiemePage {
        id: deuxiemePage
    }
}
