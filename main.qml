import QtQuick 2.4
import QtQuick.Window 2.2
import "ui/bottomBar"
import "ui/RightScreen"
import "ui/LeftScreen"

Window {
    visible: true
    width: 1280
    height: 720
    title: qsTr("Tesla Infotainment");
    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            Qt.quit();
        }

        BottomBar {
            id: bottomBar
        }

        RightScreen {
            id: rightScreen
        }

        LeftScreen {
            id: leftScreen
        }
    }
}
