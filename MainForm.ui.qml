import QtQuick 2.4

Rectangle {
    property alias mouseArea: mouseArea

    width: 1280
    height: 720

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
}
