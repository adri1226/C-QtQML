import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string lockCode: "026"
    property string status: "Locked"

    Popup {
        id: statusPopup
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        width: 200
        height: 200
        modal: true
        focus: true
        anchors.centerIn: parent

        Label {
            id: statusLabel
            anchors.centerIn: parent
            text: status
            font.bold: true
        }
    }

    Column {
        id: column
        width: 200
        height: 400
        anchors.verticalCenter: parent.verticalCenter
        spacing: 15
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("000")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pointSize: 25
        }

        Row {
            id: row
            width: 200
            height: 210
            anchors.horizontalCenter: parent.horizontalCenter

            Tumbler {
                id: tumbler
                model: 10
                onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }

            Tumbler {
                id: tumbler1
                model: 10
                onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }

            Tumbler {
                id: tumbler2
                model: 10
                onCurrentIndexChanged: label.text = tumbler.currentIndex + " " + tumbler1.currentIndex + " " + tumbler2.currentIndex
            }
        }

        Button {
            id: button
            text: qsTr("Check")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                var tempCode = tumbler.currentIndex + "" + tumbler1.currentIndex + "" + tumbler2.currentIndex
                if(tempCode === lockCode) status = "Unlocked"
                statusPopup.open()

            }
        }
    }
}
