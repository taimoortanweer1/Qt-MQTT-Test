import QtQuick 2.15
import QtQuick.Window 2.15
import "qml"


Window {
    width: 300
    height: 800
    visible: true
    title: qsTr("Hello World")
    property int data123: 1

    CapacityStatusBar {
        id: capacityStatusBar
        x: -31
        y: 35
        width: 363
        height: 55
        scale: 0.7
        //statusBarPercent: test.capacityBarPercentage

    }

    GUSGRTFullExtensionLightMode {
        id: gUSGRTFullExtensionLightMode
        x: -50
        y: 27
        boomLengthValueText:test.jibAngleValue
        scale: 0.6
    }



    Text {
        id: textValue
        x: 50
        y: 439
        text: test.jibAngleValue

        onTextChanged: {
            gUSGRTFullExtensionLightMode.boomLengthValueText=data123.toString()
            data123++;
        }
        font.pixelSize: 18
        minimumPointSize: 12
        minimumPixelSize: 12
    }

    Text {
        id: textValue2
        x: 57
        y: 488
        //text: "sdfgdf"
        font.pixelSize: 18
        minimumPointSize: 12
        minimumPixelSize: 12
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}
}
##^##*/
