import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick3D

import "PreviewObject/QmlFiles"

ApplicationWindow {
    id: root
    visible: true
    width: Screen.width
    height: Screen.height
    title: "Slide Panel with Split Rows"

    property bool tabOpen: false

    Image {
        id: imageBg
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
        source: "qrc:/images/background.jpg"
    }

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
            color: "transparent"
            height: parent.height
            width: tabOpen ? parent.width * 0.3 : 0

            Behavior on width {
                NumberAnimation { duration: 300; easing.type: Easing.InOutQuad }
            }

            Column {
                anchors.fill: parent
                spacing: 0

                Rectangle {
                    id: previewContainer
                    color: "#60696969"
                    width: parent.width
                    height: parent.height * 0.7

                    property bool manualControl: false

                    View3D {
                        anchors.fill: parent

                        environment: SceneEnvironment {
                            clearColor: "transparent"
                            backgroundMode: SceneEnvironment.Color
                        }

                        // WhiteTruck {
                        //     id: carModel
                        //     position: Qt.vector3d(0, 0, 0)
                        //     eulerRotation: Qt.vector3d(0, 0, 0)

                        //     NumberAnimation on eulerRotation.y {
                        //         id: autoRotate
                        //         from: 0
                        //         to: 360
                        //         loops: Animation.Infinite
                        //         duration: 10000
                        //         running: !previewContainer.manualControl
                        //     }
                        // }

                        Node {
                            id: sceneRoot
                        }

                        Loader {
                            id: modelLoader
                            anchors.fill: parent
                            asynchronous: true
                            source: "file:///home/duc/TestUI/PreviewObject/QmlFiles/BlackPickup.qml"

                            // Khi load xong model => bật/tắt animation theo manualControl
                            onLoaded: {
                                if (item) {
                                    // item.width = modelLoader.width
                                    // item.height = modelLoader.height

                                    // console.log("Loaded item size:", item.width, item.height)
                                    // sceneRoot.addChild(item)

                                    // if (item.autoRotate) {
                                    //     item.autoRotate.running = !previewContainer.manualControl
                                    // }
                                }
                                // if (item && item.autoRotate) {
                                //     item.autoRotate.running = !previewContainer.manualControl
                                // }
                            }
                        }

                        PerspectiveCamera {
                            id: blueCarCamera
                            position: Qt.vector3d(0, 5, 25)
                            Component.onCompleted: lookAt(Qt.vector3d(0, 0, 0))
                        }

                        DirectionalLight {
                            castsShadow: true
                            position: Qt.vector3d(0, 5, 30)
                        }

                        MouseArea {
                            anchors.fill: parent
                            acceptedButtons: Qt.LeftButton
                            enabled: previewContainer.manualControl

                            property real lastX
                            property real lastY

                            onPressed: function(mouse) {
                                lastX = mouse.x
                                lastY = mouse.y
                            }

                            onPositionChanged: function(mouse) {
                                if (mouse.buttons & Qt.LeftButton) {
                                    var dx = mouse.x - lastX
                                    var dy = mouse.y - lastY

                                    carModel.eulerRotation.y += dx * 0.5
                                    carModel.eulerRotation.x -= dy * 0.5

                                    lastX = mouse.x
                                    lastY = mouse.y
                                }
                            }

                            onWheel: function(wheel) {
                                var dz = wheel.angleDelta.y / 120
                                var newZ = blueCarCamera.position.z - dz * 2
                                var newY = blueCarCamera.position.y - dz * 0.5

                                // if (newZ < 5) newZ = 5
                                // if (newZ > 50) newZ = 50
                                console.log(newZ)

                                blueCarCamera.position = Qt.vector3d(0, newY, newZ)
                                blueCarCamera.lookAt(Qt.vector3d(0, 0, 0))
                            }
                        }
                    }

                    CheckBox {
                        id: controlCheck
                        text: "Manual Control"
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        anchors.margins: 10

                        checked: previewContainer.manualControl
                        // onCheckedChanged: previewContainer.manualControl = checked
                        onCheckedChanged: {
                            previewContainer.manualControl = checked
                            if (modelLoader.item && modelLoader.item.autoRotate) {
                                modelLoader.item.autoRotate.running = !previewContainer.manualControl
                            }
                        }
                    }
                }

                Rectangle {
                    width: parent.width
                    height: 2
                    color: "white"
                }

                Rectangle {
                    color: "#60696969"
                    width: parent.width
                    height: parent.height * 0.3

                    Timer {
                        id: loadTimer
                        interval: 500
                        repeat: false
                        onTriggered: {
                            console.log("inside timer")
                            let path = container.model[container.currentIndex].previewSrc
                            console.log(path)
                            // modelLoader.source = path
                        }
                    }

                    Carousel {
                        id: container
                        anchors.fill: parent
                        itemWidth: parent.width * 0.35
                        itemHeight: container.itemWidth * 9 / 16
                        loadTimer: loadTimer

                        // model: [
                        //     "qrc:/ObjectThumbnail/BlackPickup.png",
                        //     "qrc:/ObjectThumbnail/BlackPickupV2.png",
                        //     "qrc:/ObjectThumbnail/BlackPickupV3.png",
                        //     "qrc:/ObjectThumbnail/BlackSUV.png",
                        //     "qrc:/ObjectThumbnail/BlueAPC.png",
                        //     "qrc:/ObjectThumbnail/BlueCar.png",
                        //     "qrc:/ObjectThumbnail/BlueVan.png",
                        //     "qrc:/ObjectThumbnail/GrayVan.png",
                        //     "qrc:/ObjectThumbnail/GreenCar.png",
                        //     "qrc:/ObjectThumbnail/PoliceCar.png",
                        //     "qrc:/ObjectThumbnail/RedBus.png",
                        //     "qrc:/ObjectThumbnail/RedCar.png",
                        //     "qrc:/ObjectThumbnail/RollRoyce.png",
                        //     "qrc:/ObjectThumbnail/WhiteCar.png",
                        //     "qrc:/ObjectThumbnail/WhiteCarV2.png",
                        //     "qrc:/ObjectThumbnail/WhiteCarV3.png",
                        //     "qrc:/ObjectThumbnail/WhiteSUV.png",
                        //     "qrc:/ObjectThumbnail/WhiteTruck.png"
                        // ]

                        model: [
                            {
                                name: "BlackPickup",
                                thumbnail: "qrc:/ObjectThumbnail/BlackPickup.png",
                                previewSrc: "/PreviewObject/QmlFiles/BlackPickup.qml",
                            },
                            {
                                name: "BlackPickupV2",
                                thumbnail: "qrc:/ObjectThumbnail/BlackPickupV2.png",
                                previewSrc: "/PreviewObject/QmlFiles/BlackPickupV2.qml",
                            },
                            {
                                name: "BlackPickupV3",
                                thumbnail: "qrc:/ObjectThumbnail/BlackPickupV3.png",
                                previewSrc: "/PreviewObject/QmlFiles/BlackPickupV3.qml",
                            }
                        ]

                        onCurrentIndexChanged: {
                            console.log("inside carousel")
                            if (loadTimer) {
                                loadTimer.restart()   // 👈 restart luôn
                            }
                        }
                    }
                }
            }
        }

    }
}
