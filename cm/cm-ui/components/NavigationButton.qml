import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12

import assets 1.0

Item {
    property alias iconCharacter: textIcon.text
    property alias description: textDescription.text

    Row {
        Text {
            id: textIcon
            font {
                family: Style.fontAwesome
                pixelSize: 42
            }
            color: "#ffffff"
            text: "\uf11a"
        }
        Text {
            id: textDescription
            color: "#ffffff"
            text: "SET ME!!!"
        }
    }
}
