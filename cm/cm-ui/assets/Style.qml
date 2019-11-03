pragma Singleton
import QtQuick 2.12

Item {
    property alias fontAwesome: fontAwesomeLoader.name
    readonly property color colourBackground: "#efefef"

    FontLoader {
        id: fontAwesomeLoader
        source: "qrc:/assets/fontawesome.ttf"
    }
}
