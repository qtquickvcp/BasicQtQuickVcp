import QtQuick 2.5
import QtQuick.Layouts 1.1
import Machinekit.Application 1.0

Item {
    id: root

    ColumnLayout {
        id: container
        spacing: 20
        anchors.fill: parent

        Text {
            text: "Config"
            font.bold: true
        }

        TextInput {
            Layout.fillWidth: true
            Layout.fillHeight: true
            text: JSON.stringify(appObject.status.config)
            wrapMode: Text.WordWrap
        }

        Text {
            text: "Motion"
            font.bold: true
        }

        TextInput {
            Layout.fillWidth: true
            Layout.fillHeight: true
            text: JSON.stringify(appObject.status.motion)
            wrapMode: Text.WordWrap
        }

        Text {
            text: "IO"
            font.bold: true
        }

        TextInput {
            Layout.fillWidth: true
            Layout.fillHeight: true
            text: JSON.stringify(appObject.status.io)
            wrapMode: Text.WordWrap
        }

        Text {
            text: "Interp"
            font.bold: true
        }

        TextInput {
            Layout.fillWidth: true
            Layout.fillHeight: true
            text: JSON.stringify(appObject.status.interp)
            wrapMode: Text.WordWrap
        }
    }

    ApplicationObject {
        id: appObject
    }
}
