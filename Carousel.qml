import QtQuick 2.15
import QtQuick.Controls 2.15
import Qt5Compat.GraphicalEffects

    PathView {
        id: carousel

        property alias model: carousel.model
        property real sideItemScale: 0.5
        property int itemWidth: 150
        property int itemHeight: 140
        property Timer loadTimer

        anchors.fill: parent
        snapMode: PathView.SnapOneItem
        highlightMoveDuration: 300
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
        pathItemCount: 3

        path: Path {
            startX: 0; startY: carousel.height/2
            PathAttribute { name: "scale"; value: carousel.sideItemScale }

            PathLine { x: carousel.width/2; y: carousel.height/2 }
            PathAttribute { name: "scale"; value: 1.0 }

            PathLine { x: carousel.width; y: carousel.height/2 }
            PathAttribute { name: "scale"; value: carousel.sideItemScale }
        }

        delegate: Item {
            width: carousel.itemWidth
            height: carousel.itemHeight
            scale: PathView.scale

            Rectangle {
                anchors.fill: parent
                color: "transparent"

                Image {
                    id: image
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: modelData.thumbnail
                }
            }

            states: State {
                when: PathView.isCurrentItem
                PropertyChanges {
                    // target: image
                    // border.width: 2
                    // border.color: "red"
                }
            }
        }
    }


