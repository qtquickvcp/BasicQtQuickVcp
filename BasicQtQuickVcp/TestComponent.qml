import QtQuick 2.0
import Machinekit.HalRemote 1.0
import Machinekit.Service 1.0

Item {
    property alias test: testPin

    Service {
        id: halrcmdService
        type: "halrcmd"
    }

    Service {
        id: halrcompService
        type: "halrcomp"
    }

    HalRemoteComponent {
        id: halRemoteComponent
        halrcmdUri: halrcmdService.uri
        halrcompUri: halrcompService.uri
        ready: (halrcmdService.ready && halrcompService.ready) || connected
        containerItem: pinContainer
        name: "testcomp"
    }

    Item {
        id: pinContainer

        HalPin {
            id: testPin
            direction: HalPin.In
            type: HalPin.Bit
            name: "test"
        }
    }
}

