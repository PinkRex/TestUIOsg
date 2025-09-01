import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    property alias model: carousel.model
    property real sideItemScale: 0.5
    property int itemWidth: 150
    property int itemHeight: 140

    PathView {
        id: carousel
        anchors.fill: parent
        snapMode: PathView.SnapOneItem
        highlightMoveDuration: 300
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
        pathItemCount: 3

        path: Path {
            startX: 0; startY: root.height/2
            PathAttribute { name: "scale"; value: root.sideItemScale }

            PathLine { x: root.width/2; y: root.height/2 }
            PathAttribute { name: "scale"; value: 1.0 }

            PathLine { x: root.width; y: root.height/2 }
            PathAttribute { name: "scale"; value: root.sideItemScale }
        }

        delegate: Item {
            width: root.itemWidth
            height: root.itemHeight
            scale: PathView.scale

            Rectangle {
                anchors.fill: parent
                border.color: "white"
                color: "transparent"

                Image {
                    id: image
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: modelData
                }
            }

            states: State {
                when: PathView.isCurrentItem
                PropertyChanges {
                    target: image
                    border.width: 2
                    border.color: "red"
                }
            }
        }

        onCurrentIndexChanged: {
            console.log("Item ở giữa bây giờ là index:", currentIndex,
                        "source:", model[currentIndex])
        }
    }
}

