import QtQuick
import QtQuick3D

Node {
    id: node9

    // Resources
    Texture {
        id: __textures_suv_albedo_jpeg_texture
        objectName: "./textures/suv_albedo.jpeg"
        source: "../maps/suv_albedo.jpeg"
    }
    PrincipledMaterial {
        id: suv_material
        objectName: "suv"
        baseColor: "#ff999999"
        baseColorMap: __textures_suv_albedo_jpeg_texture
    }

    // Nodes:
    Node {
        id: blackSUV_obj
        objectName: "BlackSUV.obj"
        Model {
            id: suv_body
            objectName: "suv_body"
            source: "../meshes/suv_body_mesh.mesh"
            materials: [
                suv_material
            ]
        }
    }

    // Animations:
}
