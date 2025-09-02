import QtQuick
import QtQuick3D

Node {
    id: node11

    // Resources
    Texture {
        id: __textures_sedan_albedo_jpg_texture
        objectName: "./textures/sedan_albedo.jpg"
        source: "../maps/sedan_albedo.jpg"
    }
    PrincipledMaterial {
        id: sedan_material
        objectName: "sedan"
        baseColor: "#ff999999"
        baseColorMap: __textures_sedan_albedo_jpg_texture
    }

    // Nodes:
    Node {
        id: whiteCarV2_obj
        objectName: "WhiteCarV2.obj"
        Model {
            id: sedan_wheel_003
            objectName: "sedan_wheel.003"
            source: "../meshes/sedan_wheel_003_mesh.mesh"
            materials: [
                sedan_material
            ]
        }
    }

    // Animations:
}
