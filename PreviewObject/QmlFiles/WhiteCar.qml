import QtQuick
import QtQuick3D

Node {
    id: node15

    // Resources
    Texture {
        id: __textures_muscle_albedo_jpeg_texture
        objectName: "./textures/muscle_albedo.jpeg"
        source: "../maps/muscle_albedo.jpeg"
    }
    PrincipledMaterial {
        id: muscle_material
        objectName: "muscle"
        baseColor: "#ff999999"
        baseColorMap: __textures_muscle_albedo_jpeg_texture
    }

    // Nodes:
    Node {
        id: whiteCar_obj
        objectName: "WhiteCar.obj"
        Model {
            id: muscle_body
            objectName: "muscle_body"
            source: "../meshes/muscle_body_mesh.mesh"
            materials: [
                muscle_material
            ]
        }
    }

    // Animations:
}
