import QtQuick 2.0

Item
{
    id: root
    property color color: "gray"
    property string text: "title"

    width: 100
    height: 100

    Rectangle
    {
        color: root.color
        anchors.fill: parent

        Text
        {
            id: name
            text: qsTr(root.text)
            anchors.centerIn: parent
        }

        MouseArea
        {
            anchors.fill: parent
            drag.target: root.parent

            onClicked: root.z++
        }
    }

}


