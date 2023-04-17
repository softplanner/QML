import QtQuick 2.0

Rectangle {
    id: leftScreen
    anchors.top: parent.top
    anchors.bottom: bottomBar.top
    anchors.left: parent.left
    anchors.right: rightScreen.left

    width: parent.width * 1/3
    color: "blue"
}
