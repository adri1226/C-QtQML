import QtQuick 2.0
import QtQuick.Controls 2.5

ComboBox {
    id: root
    model: ["red", "green", "blue", "yellow", "orange"]

    delegate: ItemDelegate {
        width: root.width
        highlighted: highlightedIndex === index

        contentItem: Row {
            spacing: 5
            width: root.width

            Rectangle {
                anchors.verticalCenter: parent.verticalCenter
                width: 10
                height: 10
                border.width: 1
                border.color: "black"
                color: modelData
            }

            Text {
                text: modeldata + "--"
                color: "black"
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }
        }

        background: Rectangle {
            width: root.width
            // El tamaño que se cree que tendra
            implicitHeight: 40
            implicitWidth: 100
            border.color: currentIndex === index ? "black" : "white"
            color: currentIndex === index ? modelData : "white"
        }
    }
}
