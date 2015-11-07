import QtQuick 2.0
import QtQuick.Controls 1.2
import Machinekit.Application.Controls 1.0

Item {
    width: 600
    height: 600

    Button {
        id: button
        anchors.centerIn: parent
        text: qsTr("Test")
        checkable: true

        Binding {
            target: button
            property: "checked"
            value: testComponent.test.value
        }

        Binding {
            target: testComponent.test
            property: "value"
            value: button.checked
        }
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: button.bottom
        action: EstopAction {}
    }
}

