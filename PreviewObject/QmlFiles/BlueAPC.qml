import QtQuick
import QtQuick3D

Node {
    id: node8

    // Resources
    Texture {
        id: __textures_btr_albedo_jpg_texture
        objectName: "./textures/btr_albedo.jpg"
        source: "../maps/btr_albedo.jpg"
    }
    PrincipledMaterial {
        id: btr_white_material
        objectName: "btr_white"
        baseColor: "#ff999999"
        baseColorMap: __textures_btr_albedo_jpg_texture
    }

    // Nodes:
    Node {
        id: blueAPC_obj
        objectName: "BlueAPC.obj"
        Model {
            id: btr_body
            objectName: "btr_body"
            source: "../meshes/btr_body_mesh.mesh"
            materials: [
                btr_white_material
            ]
        }
    }

    // Animations:
}
