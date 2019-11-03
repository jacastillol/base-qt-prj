import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12

import assets 1.0

Row {
    Text {
        font {
            family: Style.fontAwesome
            pixelSize: 42
        }
        color: "#ffffff"
        text: "\uf234"
    }
    Text {
        color: "#ffffff"
        text: "New Client"
    }
}
