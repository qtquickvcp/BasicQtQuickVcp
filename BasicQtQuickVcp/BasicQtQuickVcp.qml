import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.0
import Machinekit.HalRemote 1.0
import Machinekit.Application 1.0
import Machinekit.Service 1.0
import Machinekit.Application.Controls 1.0
import Machinekit.PathView 1.0
import Machinekit.VideoView 1.0

ServiceWindow {
    id: window
    visible: true
    width: 1200
    height: 900
    title: applicationCore.applicationName + (d.machineName == "" ? "" :" - " +  d.machineName)

    Item {
        id: d
        property string machineName: applicationCore.status.config.name
    }

    ApplicationCore {
        id: applicationCore
        notifications: applicationNotifications
        applicationName: "BasicQtQuickVcp"
    }

    ApplicationNotifications {
        id: applicationNotifications
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.margins: Screen.pixelDensity
        messageWidth: parent.width * 0.15
    }

    ApplicationRemoteFileDialog {
        id: applicationFileDialog
        width: window.width
        height: window.height
        fileDialog: fileDialog
    }

    ApplicationFileDialog {
        id: fileDialog
    }

    PathViewCore {
        id: pathViewCore
    }

    TestComponent {
        id: testComponent
    }

    MainWindow {
        anchors.fill: parent
    }
}
