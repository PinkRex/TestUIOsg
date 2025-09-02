import QtQuick
import QtQuick3D

Node {
    id: node12
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
        id: __textures_other_T_albedo_jpg_texture4
        objectName: "./textures/other_T_albedo.jpg"
        source: "../maps/other_T_albedo.jpg"
    }
    Texture {
        id: __textures_body_t_albedo_jpg_texture6
        objectName: "./textures/body_t_albedo.jpg"
        source: "../maps/body_t_albedo.jpg"
    }
    Texture {
        id: __textures_light_t_roughness_jpg_texture
        objectName: "./textures/light_t_roughness.jpg"
        source: "../maps/light_t_roughness.jpg"
    }
    Texture {
        id: __textures_light_t_albedo_jpg_texture10
        objectName: "./textures/light_t_albedo.jpg"
        source: "../maps/light_t_albedo.jpg"
    }
    PrincipledMaterial {
        id: other_T_005_material
        objectName: "other_T.005"
        baseColor: "#ff999999"
        baseColorMap: __textures_other_T_albedo_jpg_texture4
    }
    PrincipledMaterial {
        id: body_t_005_material
        objectName: "body_t.005"
        baseColor: "#ff999999"
        baseColorMap: __textures_body_t_albedo_jpg_texture6
    }
    PrincipledMaterial {
        id: window_t_005_material
        objectName: "window_t.005"
        baseColor: "#ff999999"
        baseColorMap: __textures_light_t_roughness_jpg_texture
    }
    PrincipledMaterial {
        id: light_t_005_material
        objectName: "light_t.005"
        baseColor: "#ff999999"
        baseColorMap: __textures_light_t_albedo_jpg_texture10
    }

    // Nodes:
    Node {
        id: blackPickupV2_obj
        objectName: "BlackPickupV2.obj"
        Model {
            id: pickupModern
            objectName: "PickupModern"
            source: "../meshes/pickupModern_mesh.mesh"
            materials: [
                other_T_005_material,
                body_t_005_material,
                window_t_005_material,
                light_t_005_material
            ]
        }
    }

    // Animations:
}
