import QtQuick 2.15
import QtQuick.Window 2.15

// MouseArea
// Definimos un area en la que trackeamos diferentes acciones realizadas con el raton, como click derecho o izquierdo
// Si queremos usar mas que el boton izquierdo tenemos que definirlos dentro de acceptedButtons con Qt.LeftButton | Qt.RightButton ...
// Si queremos mas usar mas eventos del raton que sean onClicked o onDoubleClicked debemos activar hoverEnabled

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id: myArea
        color: "blue"
        width: 200
        height: 200
        anchors.centerIn: parent

        MouseArea
        {
            id: myMouse
            anchors.fill: parent

            acceptedButtons: Qt.LeftButton | Qt.RightButton
            hoverEnabled: true

            onClicked:
            {
                console.log("Clicked: " + mouse.button)
                if(mouse.button === Qt.LeftButton) parent.color = "green"
                if(mouse.button === Qt.RightButton) parent.color = "red"
            }

            onDoubleClicked: console.log("Double click: " + mouse.button)

            onPositionChanged: console.log("Position X: " + mouseX + "Y: " + mouseY)

            onEntered: parent.color = "orange"
            onExited: parent.color = "blue"
        }
    }
}
