import QtQuick 2.8
import QtQuick.Controls 2.15
import QtQuick.Timeline 1.0

Rectangle {
    id: capacityStatusBar
    width: 362
    height: 55
    color: "transparent"
    radius: 5
    border.width: 0
    property alias valueBG: valueBG
    property alias statusBarPercent: capacityStatusBarTimeline.currentFrame

    Rectangle {
        id: container
        color: "#ffffff"
        radius: 5
        border.width: 1
        anchors.fill: parent
        focus: false
        clip: true

        Rectangle {
            id: redOff
            x: 332
            y: 0
            width: 30
            height: 55
            color: "#cda2b0"
            border.width: 0
        }

        Rectangle {
            id: orangeOff
            x: 265
            y: 0
            width: 67
            height: 55
            color: "#d2d6a8"
            border.width: 0
        }

        Rectangle {
            id: greenOff
            x: 0
            y: 0
            width: 266
            height: 55
            color: "#accdc3"
        }
        Rectangle {
            id: statusBar
            y: 0
            width: 362
            height: 55
            color: "#dc2323"
            border.width: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }

        Rectangle {
            id: valueBG
            x: 138
            y: 11
            width: 85
            height: 34
            opacity: 0.7
            color: "#ffffff"
            radius: 3
            border.width: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: value
                x: 12
                y: 6
                text: (capacityStatusBarTimeline.currentFrame
                       / capacityStatusBarTimeline.endFrame * 100).toFixed(
                          ) + "%"
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 18
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                font.family: "Roboto"
            }
        }
    }

    Timeline {
        id: capacityStatusBarTimeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                loops: -1
                pingPong: true
                running: false
                duration: 5000
                to: 100
                from: 0
            }
        ]
        enabled: true
        endFrame: 100
        startFrame: 0

        KeyframeGroup {
            target: statusBar
            property: "width"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 100
                value: 362
            }
        }

        KeyframeGroup {
            target: statusBar
            property: "color"
            Keyframe {
                frame: 0
                value: "#33b921"
            }

            Keyframe {
                frame: 73
                value: "#33b921"
            }

            Keyframe {
                frame: 73
                value: "#edae4a"
            }

            Keyframe {
                frame: 91
                value: "#edae4a"
            }

            Keyframe {
                frame: 91
                value: "#dc2323"
            }

            Keyframe {
                frame: 1000
                value: "#dc2323"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:55;width:362}D{i:8}
}
##^##*/

