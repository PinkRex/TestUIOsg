import QtQuick
import QtQuick3D

Node {
    id: node4
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
        id: __textures_other_T_albedo_jpg_texture
        objectName: "./textures/other_T_albedo.jpg"
        source: "../maps/other_T_albedo.jpg"
    }
    Texture {
        id: __textures_body_t_albedo_jpg_texture
        objectName: "./textures/body_t_albedo.jpg"
        source: "../maps/body_t_albedo.jpg"
    }
    Texture {
        id: __textures_light_t_albedo_jpg_texture
        objectName: "./textures/light_t_albedo.jpg"
        source: "../maps/light_t_albedo.jpg"
    }
    PrincipledMaterial {
        id: other_T_013_material
        objectName: "other_T.013"
        baseColor: "#ff999999"
        baseColorMap: __textures_other_T_albedo_jpg_texture
    }
    PrincipledMaterial {
        id: body_t_014_material
        objectName: "body_t.014"
        baseColor: "#ff999999"
        baseColorMap: __textures_body_t_albedo_jpg_texture
    }
    PrincipledMaterial {
        id: light_t_015_material
        objectName: "light_t.015"
        baseColor: "#ff999999"
        baseColorMap: __textures_light_t_albedo_jpg_texture
    }

    // Nodes:
    Node {
        id: blackPickup_obj
        objectName: "BlackPickup.obj"
        Model {
            id: pickUp
            objectName: "PickUp"
            source: "../meshes/pickUp_mesh.mesh"
            materials: [
                other_T_013_material,
                body_t_014_material,
                body_t_014_material,
                light_t_015_material
            ]
        }
    }

    // Animations:
}
