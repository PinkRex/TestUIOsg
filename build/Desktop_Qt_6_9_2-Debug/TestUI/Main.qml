// import QtQuick 2.15
// import QtQuick.Window 2.15
// import QtQuick.Controls
// import QtQuick3D

// import "PreviewObject"

// ApplicationWindow {
//     id: root
//     width: 800
//     height: 600
//     visible: true
//     title: "Car SwipeView Demo"

//     SwipeView {
//         id: swipeView
//         anchors.fill: parent
//         interactive: true

//         Page {
//             View3D {
//                 anchors.fill: parent

//                 environment: SceneEnvironment {
//                     clearColor: "#222"
//                     backgroundMode: SceneEnvironment.Color
//                 }

//                 BlueCarCentered {
//                     id: blueCar
//                     position: Qt.vector3d(0, 0, 0)
//                     eulerRotation: Qt.vector3d(0, 0, 0)

//                     NumberAnimation on eulerRotation.y {
//                         from: 0
//                         to: 360
//                         loops: Animation.Infinite
//                         duration: 10000
//                         running: true
//                     }
//                 }

//                 PerspectiveCamera {
//                     id: blueCarCamera
//                     position: Qt.vector3d(0, 5, 15)
//                     Component.onCompleted: lookAt(Qt.vector3d(0, 0, 0))
//                 }

//                 DirectionalLight {
//                     castsShadow: true
//                     position: Qt.vector3d(0, 5, 15)
//                     eulerRotation: Qt.vector3d(-45, 0, 0)
//                 }
//             }
//         }

//         Page {
//             View3D {
//                 anchors.fill: parent

//                 environment: SceneEnvironment {
//                     clearColor: "#222"
//                     backgroundMode: SceneEnvironment.Color
//                 }

//                 GreenCarCentered {
//                     id: greenCar
//                     position: Qt.vector3d(0, 0, 0)
//                     eulerRotation: Qt.vector3d(0, 0, 0)

//                     NumberAnimation on eulerRotation.y {
//                         from: 0
//                         to: 360
//                         loops: Animation.Infinite
//                         duration: 10000
//                         running: true
//                     }
//                 }

//                 PerspectiveCamera {
//                     id: greenCarCamera
//                     position: Qt.vector3d(0, 5, 15)
//                     Component.onCompleted: lookAt(Qt.vector3d(0, 0, 0))
//                 }

//                 DirectionalLight {
//                     castsShadow: true
//                     position: Qt.vector3d(0, 5, 15)
//                     eulerRotation: Qt.vector3d(-45, 0, 0)
//                 }
//             }
//         }

//         Page {
//             View3D {
//                 anchors.fill: parent

//                 environment: SceneEnvironment {
//                     clearColor: "#222"
//                     backgroundMode: SceneEnvironment.Color
//                 }

//                 JeepCarCentered {
//                     id: jeepCar
//                     position: Qt.vector3d(0, 0, 0)
//                     eulerRotation: Qt.vector3d(0, 0, 0)

//                     NumberAnimation on eulerRotation.y {
//                         from: 0
//                         to: 360
//                         loops: Animation.Infinite
//                         duration: 10000
//                         running: true
//                     }
//                 }

//                 PerspectiveCamera {
//                     id: jeepCarCamera
//                     position: Qt.vector3d(0, 5, 15)
//                     Component.onCompleted: lookAt(Qt.vector3d(0, 0, 0))
//                 }

//                 DirectionalLight {
//                     castsShadow: true
//                     position: Qt.vector3d(0, 5, 15)
//                     eulerRotation: Qt.vector3d(-45, 0, 0)
//                 }
//             }
//         }

//         Page {
//             View3D {
//                 anchors.fill: parent

//                 environment: SceneEnvironment {
//                     clearColor: "#222"
//                     backgroundMode: SceneEnvironment.Color
//                 }

//                 RedBusCentered {
//                     id: redBus
//                     position: Qt.vector3d(0, 0, 0)
//                     eulerRotation: Qt.vector3d(0, 0, 0)

//                     NumberAnimation on eulerRotation.y {
//                         from: 0
//                         to: 360
//                         loops: Animation.Infinite
//                         duration: 10000
//                         running: true
//                     }
//                 }

//                 PerspectiveCamera {
//                     id: redBusCamera
//                     position: Qt.vector3d(0, 5, 30)
//                     Component.onCompleted: lookAt(Qt.vector3d(0, 0, 0))
//                 }

//                 DirectionalLight {
//                     castsShadow: true
//                     position: Qt.vector3d(0, 5, 15)
//                     eulerRotation: Qt.vector3d(-45, 0, 0)
//                 }
//             }
//         }

//         Page {
//             View3D {
//                 anchors.fill: parent

//                 environment: SceneEnvironment {
//                     clearColor: "#222"
//                     backgroundMode: SceneEnvironment.Color
//                 }

//                 WhiteCarCentered {
//                     id: whiteCar
//                     position: Qt.vector3d(0, 0, 0)
//                     eulerRotation: Qt.vector3d(0, 0, 0)

//                     NumberAnimation on eulerRotation.y {
//                         from: 0
//                         to: 360
//                         loops: Animation.Infinite
//                         duration: 10000
//                         running: true
//                     }
//                 }

//                 PerspectiveCamera {
//                     id: whiteCarCamera
//                     position: Qt.vector3d(0, 5, 15)
//                     Component.onCompleted: lookAt(Qt.vector3d(0, 0, 0))
//                 }

//                 DirectionalLight {
//                     castsShadow: true
//                     position: Qt.vector3d(0, 5, 15)
//                     eulerRotation: Qt.vector3d(-45, 0, 0)
//                 }
//             }
//         }

//         Page {
//             View3D {
//                 anchors.fill: parent

//                 environment: SceneEnvironment {
//                     clearColor: "#222"
//                     backgroundMode: SceneEnvironment.Color
//                 }

//                 WhiteVanCentered {
//                     id: whiteVan
//                     position: Qt.vector3d(0, 0, 0)
//                     eulerRotation: Qt.vector3d(0, 0, 0)

//                     NumberAnimation on eulerRotation.y {
//                         from: 0
//                         to: 360
//                         loops: Animation.Infinite
//                         duration: 10000
//                         running: true
//                     }
//                 }

//                 PerspectiveCamera {
//                     id: whiteVanCamera
//                     position: Qt.vector3d(0, 5, 15)
//                     Component.onCompleted: lookAt(Qt.vector3d(0, 0, 0))
//                 }

//                 DirectionalLight {
//                     castsShadow: true
//                     position: Qt.vector3d(0, 5, 15)
//                     eulerRotation: Qt.vector3d(-45, 0, 0)
//                 }
//             }
//         }
//     }
// }


import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: root
    visible: true
    width: Screen.width
    height: Screen.height
    title: "Slide Panel with Split Rows"

    property bool tabOpen: false

    Row {
        anchors.fill: parent
        spacing: 0

        // Main content
        Rectangle {
            id: mainContent
            color: "#3498db"
            height: parent.height
            width: tabOpen ? parent.width * 0.7 : parent.width

            Behavior on width {
                NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
            }

            Button {
                anchors.centerIn: parent
                text: tabOpen ? "Close Panel" : "Open Panel"
                onClicked: tabOpen = !tabOpen
            }
        }

        // Slide panel (chia thành 2 hàng dọc)
        Rectangle {
            id: slidePanel
            color: "transparent"   // để thấy rõ 2 phần bên trong
            height: parent.height
            width: tabOpen ? parent.width * 0.3 : 0

            Behavior on width {
                NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
            }

            Column {
                anchors.fill: parent
                spacing: 2

                Rectangle {
                    color: "#2ecc71"
                    width: parent.width
                    height: parent.height * 0.7
                    Text {
                        anchors.centerIn: parent
                        text: "Top 70%"
                        color: "white"
                    }
                }

                Rectangle {
                    color: "#e67e22"
                    width: parent.width
                    height: parent.height * 0.3

                    Carousel {
                        id: container
                        anchors.fill: parent
                        itemWidth: parent.width * 0.35 + 1
                        itemHeight: container.itemWidth * 9 / 16
                        model: [
                            "qrc:/ObjectThumbnail/BlackPickup.png",
                            "qrc:/ObjectThumbnail/BlackPickup.png",
                            "qrc:/ObjectThumbnail/BlackPickupV2.png",
                            "qrc:/ObjectThumbnail/BlackPickupV3.png",
                            "qrc:/ObjectThumbnail/BlackSUV.png",
                            "qrc:/ObjectThumbnail/BlueAPC.png",
                            "qrc:/ObjectThumbnail/BlueCar.png",
                            "qrc:/ObjectThumbnail/BlueVan.png",
                            "qrc:/ObjectThumbnail/GrayVan.png",
                            "qrc:/ObjectThumbnail/GreenCar.png",
                            "qrc:/ObjectThumbnail/PoliceCar.png",
                            "qrc:/ObjectThumbnail/RedBus.png",
                            "qrc:/ObjectThumbnail/RedCar.png",
                            "qrc:/ObjectThumbnail/RollRoyce.png",
                            "qrc:/ObjectThumbnail/WhiteCar.png",
                            "qrc:/ObjectThumbnail/WhiteCarV2.png",
                            "qrc:/ObjectThumbnail/WhiteCarV3.png",
                            "qrc:/ObjectThumbnail/WhiteSUV.png",
                            "qrc:/ObjectThumbnail/WhiteTruck.png"
                        ]
                    }
                }
            }
        }
    }
}


