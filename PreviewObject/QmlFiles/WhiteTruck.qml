import QtQuick
import QtQuick3D

Node {
    id: node16

    // Resources
    Texture {
        id: __textures_truck_albedo_jpeg_texture
        objectName: "./textures/truck_albedo.jpeg"
        source: "../maps/truck_albedo.jpeg"
    }
    PrincipledMaterial {
        id: truck_material
        objectName: "truck"
        baseColor: "#ff999999"
        baseColorMap: __textures_truck_albedo_jpeg_texture
    }

    // Nodes:
    Node {
        id: whiteTruck_obj
        objectName: "WhiteTruck.obj"
        Model {
            id: truck_body
            objectName: "truck_body"
            source: "../meshes/truck_body_mesh.mesh"
            materials: [
                truck_material
            ]
        }
    }

    // Animations:
}
