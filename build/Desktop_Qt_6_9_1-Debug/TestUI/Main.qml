import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls
import QtQuick3D

Window {
    id: root
    width: 800
    height: 600
    visible: true
    title: "WhiteVan Auto Rotation"

    View3D {
        anchors.fill: parent

        environment: SceneEnvironment {
            clearColor: "#222"
            backgroundMode: SceneEnvironment.Color
        }

        // Object chính
        WhiteVanCentered {
            id: whiteVan
            position: Qt.vector3d(0, 0, 0)
            eulerRotation: Qt.vector3d(0, 0, 0)

            // Animation tự quay quanh trục Y
            NumberAnimation on eulerRotation.y {
                from: 0
                to: 360
                loops: Animation.Infinite
                duration: 10000   // 10 giây cho 1 vòng
                running: true
            }
        }

        // Camera đứng yên
        PerspectiveCamera {
            id: camera
            position: Qt.vector3d(0, 5, 15)
            Component.onCompleted: lookAt(whiteVan.position)
        }

        // Ánh sáng
        DirectionalLight {
            // eulerRotation.x: -20
            // eulerRotation.y: 110
            castsShadow: true
        }
    }
}
