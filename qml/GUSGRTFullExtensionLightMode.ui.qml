import QtQuick 2.8
import QtQuick.Timeline 1.0

Item {
    id: craneScheme
    width: 410
    height: 412
    property alias boomLengthValueText: boomLengthValue.text

    Image {
        id: craneImageFile
        x: 0
        y: 0
        source: "assets/GUS/GRT/FullExtension/LightMode_merged_child1.png"
    }

    Row {
        id: rowBoomLengthValue
        x: 123
        y: 147
        width: 81
        height: 32
        topPadding: 5
        Text {
            id: boomLengthValue
            width: 60
            color: "#131f2d"
            text: "36.1"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 24
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            topPadding: 0
            anchors.topMargin: 5
            anchors.bottomMargin: 5
            font.weight: Font.Bold
            font.family: "Roboto"
        }

        Text {
            id: boomLengthUnit
            width: 38
            height: 21
            color: "#131f2d"
            text: "ft"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.NoWrap
            topPadding: 2
            fontSizeMode: Text.FixedSize
            font.weight: Font.Light
            font.family: "Roboto Light"
        }
        spacing: 3
        bottomPadding: 6
    }

    Text {
        id: jibAngleValue
        x: 342
        y: 19
        width: 67
        height: 27
        color: "#131f2d"
        text: "12.4"
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.bold: true
        font.weight: Font.Bold
        font.family: "Roboto"
    }

    Text {
        id: boomAndlgeValue
        x: 226
        y: 213
        width: 78
        height: 27
        color: "#131f2d"
        text: "41.3˚"
        font.pixelSize: 24
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        font.bold: true
        font.weight: Font.Bold
        font.family: "Roboto"
    }

    Row {
        id: rowWeigthValue
        x: 39
        y: 200
        width: 81
        height: 32
        topPadding: 5
        Text {
            id: weightValue
            width: 60
            color: "#131f2d"
            text: "34.9"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 24
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.bold: true
            topPadding: 0
            anchors.topMargin: 5
            anchors.bottomMargin: 5
            property int property0: 88
            font.weight: Font.Bold
            font.family: "Roboto"
        }

        Text {
            id: weightUnit
            width: 38
            height: 21
            color: "#131f2d"
            text: "klb"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.NoWrap
            topPadding: 2
            fontSizeMode: Text.FixedSize
            font.weight: Font.Light
            font.family: "Roboto Light"
        }
        spacing: 3
        bottomPadding: 6
    }

    Row {
        id: rowBoomHeight
        x: 294
        y: 155
        width: 81
        height: 32
        topPadding: 5
        Text {
            id: heightValue
            width: 60
            color: "#131f2d"
            text: "36.1"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 24
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            topPadding: 0
            anchors.topMargin: 5
            anchors.bottomMargin: 5
            property int property0: 88
            font.weight: Font.Bold
            font.family: "Roboto"
        }

        Text {
            id: heightUnit
            width: 38
            height: 21
            color: "#131f2d"
            text: "ft"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.NoWrap
            topPadding: 2
            fontSizeMode: Text.FixedSize
            font.weight: Font.Light
            font.family: "Roboto Light"
        }
        spacing: 3
        bottomPadding: 6
    }

    Row {
        id: rowLiftingRadius
        x: 176
        y: 378
        width: 81
        height: 32
        topPadding: 5
        Text {
            id: radiusValue
            width: 60
            color: "#131f2d"
            text: "36.1"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 24
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            topPadding: 0
            anchors.topMargin: 5
            anchors.bottomMargin: 5
            property int property0: 88
            font.weight: Font.Bold
            font.family: "Roboto"
        }

        Text {
            id: radiusUnit
            width: 38
            height: 21
            color: "#131f2d"
            text: "ft"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.NoWrap
            topPadding: 2
            fontSizeMode: Text.FixedSize
            font.weight: Font.Light
            font.family: "Roboto Light"
        }
        spacing: 3
        bottomPadding: 6
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                pingPong: true
                running: false
                loops: -1
                duration: 2000
                to: 100
                from: 0
            }
        ]
        startFrame: 0
        enabled: true
        endFrame: 100

        KeyframeGroup {
            target: weightValue
            property: "text"
            Keyframe {
                value: "34.4"
                frame: 0
            }

            Keyframe {
                value: "34.5"
                frame: 10
            }

            Keyframe {
                value: "34.6"
                frame: 20
            }

            Keyframe {
                value: "34.7"
                frame: 30
            }

            Keyframe {
                value: "34.8"
                frame: 40
            }

            Keyframe {
                value: "34.9"
                frame: 50
            }

            Keyframe {
                value: "35.0"
                frame: 60
            }

            Keyframe {
                value: "35.2"
                frame: 70
            }

            Keyframe {
                value: "35.5"
                frame: 80
            }

            Keyframe {
                value: "35.8"
                frame: 90
            }

            Keyframe {
                value: "35.0"
                frame: 100
            }
        }

        KeyframeGroup {
            target: radiusValue
            property: "text"
            Keyframe {
                value: "36.2"
                frame: 0
            }

            Keyframe {
                value: "37.0"
                frame: 20
            }

            Keyframe {
                value: "37.5"
                frame: 30
            }

            Keyframe {
                value: "38.0"
                frame: 40
            }

            Keyframe {
                value: "38.5"
                frame: 50
            }

            Keyframe {
                value: "39.0"
                frame: 60
            }

            Keyframe {
                value: "39.5"
                frame: 70
            }

            Keyframe {
                value: "40.0"
                frame: 80
            }

            Keyframe {
                value: "40.5"
                frame: 90
            }

            Keyframe {
                value: "41.0"
                frame: 100
            }
        }

        KeyframeGroup {
            target: boomAndlgeValue
            property: "text"
            Keyframe {
                value: "42.3˚"
                frame: 10
            }

            Keyframe {
                value: "44.7˚"
                frame: 20
            }

            Keyframe {
                value: "45.7˚"
                frame: 30
            }

            Keyframe {
                value: "46.7˚"
                frame: 40
            }

            Keyframe {
                value: "48.1˚"
                frame: 50
            }

            Keyframe {
                value: "52.1˚"
                frame: 60
            }

            Keyframe {
                value: "55.1˚"
                frame: 70
            }

            Keyframe {
                value: "57.1˚"
                frame: 80
            }

            Keyframe {
                value: "59.1˚"
                frame: 90
            }

            Keyframe {
                value: "61.1˚"
                frame: 100
            }
        }

        KeyframeGroup {
            target: boomLengthValue
            property: "text"
            Keyframe {
                value: "36.2"
                frame: 5
            }

            Keyframe {
                value: "37.1"
                frame: 10
            }

            Keyframe {
                value: "38.1"
                frame: 20
            }

            Keyframe {
                value: "38.5"
                frame: 30
            }

            Keyframe {
                value: "39.0"
                frame: 40
            }

            Keyframe {
                value: "39.5"
                frame: 50
            }

            Keyframe {
                value: "40.0"
                frame: 60
            }

            Keyframe {
                value: "40.5"
                frame: 70
            }

            Keyframe {
                value: "41.0"
                frame: 80
            }

            Keyframe {
                value: "41.5"
                frame: 90
            }

            Keyframe {
                value: "42.0"
                frame: 100
            }
        }

        KeyframeGroup {
            target: heightValue
            property: "text"
            Keyframe {
                value: "36.2"
                frame: 5
            }

            Keyframe {
                value: "37.1"
                frame: 10
            }

            Keyframe {
                value: "38.1"
                frame: 20
            }

            Keyframe {
                value: "38.5"
                frame: 30
            }

            Keyframe {
                value: "39.0"
                frame: 40
            }

            Keyframe {
                value: "39.5"
                frame: 50
            }

            Keyframe {
                value: "40.0"
                frame: 60
            }

            Keyframe {
                value: "40.5"
                frame: 70
            }

            Keyframe {
                value: "41.0"
                frame: 80
            }

            Keyframe {
                value: "41.5"
                frame: 90
            }

            Keyframe {
                value: "42.0"
                frame: 100
            }
        }

        KeyframeGroup {
            target: jibAngleValue
            property: "text"
            Keyframe {
                value: "15"
                frame: 5
            }

            Keyframe {
                value: "16"
                frame: 10
            }

            Keyframe {
                value: "17"
                frame: 20
            }

            Keyframe {
                value: "18"
                frame: 30
            }

            Keyframe {
                value: "19"
                frame: 40
            }

            Keyframe {
                value: "20"
                frame: 50
            }

            Keyframe {
                value: "21"
                frame: 60
            }

            Keyframe {
                value: "22"
                frame: 70
            }

            Keyframe {
                value: "23"
                frame: 80
            }

            Keyframe {
                value: "24"
                frame: 90
            }

            Keyframe {
                value: "25"
                frame: 100
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:412;width:410}D{i:1;uuid:"5d80270f-4629-56e1-8f76-d289f85f05e5-1"}D{i:3;uuid:"ec82e199-6aae-59ce-819e-98aea4182c0b"}
D{i:4;uuid:"ec82e199-6aae-59ce-819e-98aea4182c0b"}D{i:2;uuid:"c4d6915a-9ed8-5234-a3f9-18fb019034de-1"}
D{i:5;uuid:"da53b8fa-054c-52a4-bac4-f7aa177cb69c"}D{i:6;uuid:"1464d9f3-395c-508a-9306-d9d7b81922e3"}
D{i:8;uuid:"ec82e199-6aae-59ce-819e-98aea4182c0b"}D{i:9;uuid:"ec82e199-6aae-59ce-819e-98aea4182c0b"}
D{i:7;uuid:"c4d6915a-9ed8-5234-a3f9-18fb019034de-1"}D{i:11;uuid:"ec82e199-6aae-59ce-819e-98aea4182c0b"}
D{i:12;uuid:"ec82e199-6aae-59ce-819e-98aea4182c0b"}D{i:10;uuid:"c4d6915a-9ed8-5234-a3f9-18fb019034de-1"}
D{i:14;uuid:"ec82e199-6aae-59ce-819e-98aea4182c0b"}D{i:15;uuid:"ec82e199-6aae-59ce-819e-98aea4182c0b"}
D{i:13;uuid:"c4d6915a-9ed8-5234-a3f9-18fb019034de-1"}D{i:16}
}
##^##*/

