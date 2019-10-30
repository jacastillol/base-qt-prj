import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Client Management")

    Connections {
        target: masterController.ui_navigationController
        onGoCreateClientView:
            contentFrame.replace("qrc:/views/CreateClientView.qml")
        onGoDashboardView:
            contentFrame.replace("qrc:/views/DashboardView.qml")
        onGoEditClientView:
            contentFrame.replace(
                "qrc:/views/EditClientView.qml", {selectedClient: client})
        onGoFindClientView:
            contentFrame.replace("qrc:/views/FindClientView.qml")
    }

    StackView {
        id: contentFrame
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("qrc:/views/SplashView.qml")
    }

    Button {
        text: masterController.ui_welcomeMessage
        onClicked: contentFrame.replace("qrc:/views/CreateClientView.qml")
    }

    Component.onCompleted:
        contentFrame.replace("qrc:/views/DashboardView.qml");
}
