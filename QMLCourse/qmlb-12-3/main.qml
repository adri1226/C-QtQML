import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Popup {
        id: popup
        anchors.centerIn: parent
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        Label {
            id: lblStatus
            anchors.centerIn: parent
            text: ""
        }
    }

        Login {
            id: login
            width: 250
            height: 200
            anchors.centerIn: parent
            onLogin: {
                lblStatus.text = username
                popup.open()
            }
        }
    }
