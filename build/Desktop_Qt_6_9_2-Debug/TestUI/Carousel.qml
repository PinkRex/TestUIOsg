// import QtQuick 2.15
// import QtQuick.Controls 2.15

// Item {
//     id: root
//     width: 400
//     height: 300

//     property alias model: carousel.model
//     property real itemScale: 0.5   // tỉ lệ thu nhỏ item không được chọn
//     property int itemWidth: 120
//     property int itemHeight: 160

//     PathView {
//         id: carousel
//         anchors.fill: parent
//         snapMode: PathView.SnapOneItem
//         highlightMoveDuration: 300
//         preferredHighlightBegin: 0.5
//         preferredHighlightEnd: 0.5
//         pathItemCount: 3

//         // Đường thẳng ngang
//         path: Path {
//             startX: 0; startY: root.height / 2
//             PathLine { x: root.width; y: root.height / 2 }
//         }

//         delegate: Item {
//             width: root.itemWidth
//             height: root.itemHeight

//             // Nếu là item được highlight (ở giữa) thì scale = 1, còn lại scale = itemScale
//             scale: PathView.isCurrentItem ? 1.0 : root.itemScale

//             Rectangle {
//                 anchors.fill: parent
//                 radius: 10
//                 color: PathView.isCurrentItem ? "lightblue" : "#cccccc"

//                 Image {
//                     anchors.fill: parent
//                     anchors.margins: 5
//                     fillMode: Image.PreserveAspectFit
//                     source: modelData
//                 }
//             }
//         }
//     }

//     // Nút điều hướng
//     Button {
//         text: "<"
//         anchors.left: parent.left
//         anchors.verticalCenter: parent.verticalCenter
//         onClicked: carousel.decrementCurrentIndex()
//     }
//     Button {
//         text: ">"
//         anchors.right: parent.right
//         anchors.verticalCenter: parent.verticalCenter
//         onClicked: carousel.incrementCurrentIndex()
//     }
// }


import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root
    width: 400
    height: 300

    Rectangle {
        height: parent.height
        width: parent.width
        color: "#999"
    }

    property alias model: carousel.model
    property real sideItemScale: 0.5   // tỉ lệ item hai bên
    property int itemWidth: 100
    property int itemHeight: 140

    PathView {
        id: carousel
        anchors.fill: parent
        snapMode: PathView.SnapOneItem
        highlightMoveDuration: 300
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
        pathItemCount: 3   // chỉ hiển thị 3 item

        // Đường thẳng ngang
        // path: Path {
        //     startX: 0; startY: root.height/2
        //     PathAttribute { name: "scale"; value: 1.0 }
        //     PathLine { x: root.width; y: root.height/2 }
        //     PathAttribute { name: "scale"; value: 1.0 }
        // }

        path: Path {
            startX: 0; startY: root.height/2
            PathAttribute { name: "scale"; value: root.sideItemScale }

            PathLine { x: root.width/2; y: root.height/2 }
            PathAttribute { name: "scale"; value: 1.0 }  // item ở giữa phóng to

            PathLine { x: root.width; y: root.height/2 }
            PathAttribute { name: "scale"; value: root.sideItemScale }
        }

        delegate: Item {
            width: root.itemWidth
            height: root.itemHeight

            // scale theo PathAttribute (giữa = 1, hai bên = sideItemScale)
            y: -height/2

            scale: PathView.scale

            Rectangle {
                anchors.fill: parent
                radius: 8
                color: PathView.isCurrentItem ? "lightblue" : "#cccccc"

                Image {
                    anchors.fill: parent
                    anchors.margins: 5
                    fillMode: Image.PreserveAspectFit
                    source: modelData
                }
            }
        }
    }
}

