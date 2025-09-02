import QtQuick
import QtQuick3D

Node {
    id: node3
    position: Qt.vector3d(0, 0, 0)
    eulerRotation: Qt.vector3d(0, 0, 0)

    property alias autoRotate: autoRotate

    NumberAnimation on eulerRotation.y {
        id: autoRotate
        from: 0
        to: 360
        loops: Animation.Infinite
        duration: 10000
        running: true
    }

    // Resources
    Texture {
        id: __textures_pickup_albedo_jpg_texture
        objectName: "./textures/pickup_albedo.jpg"
        source: "../maps/pickup_albedo.jpg"
    }
    PrincipledMaterial {
        id: pickup_material
        objectName: "pickup"
        baseColor: "#ff999999"
        baseColorMap: __textures_pickup_albedo_jpg_texture
    }

    // Nodes:
    Node {
        id: blackPickupV3_obj
        objectName: "BlackPickupV3.obj"
        Model {
            id: pickup_wheel_003
            objectName: "pickup_wheel.003"
            source: "../meshes/pickup_wheel_003_mesh.mesh"
            materials: [
                pickup_material
            ]
        }
    }

    // Animations:
}
