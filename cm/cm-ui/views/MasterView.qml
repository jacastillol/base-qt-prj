import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Client Management")

    Text {
        text: masterController.ui_welcomeMessage
    }
}
