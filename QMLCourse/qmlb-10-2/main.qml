import QtQuick 2.15
import QtQuick.Window 2.15

import "code.js" as Code

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    Component.onCompleted: {
        Code.startUp(root, box)
        area.clicked.connect(Code.clicked)
    }

    Rectangle {
        id: box
        color: Code.swapColor(area)
        width: 100
        height: 100
        x: 0
        y: (parent.height/2) - (height/2)

        MouseArea {
            id: area
            anchors.fill: parent
//            onClicked: Code.performClick(root, box)
        }
    }
}
