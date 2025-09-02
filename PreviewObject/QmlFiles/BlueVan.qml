import QtQuick
import QtQuick3D

Node {
    id: node5

    // Resources
    Texture {
        id: __textures_van_extra1_albedo_jpg_texture
        objectName: "./textures/van_extra1_albedo.jpg"
        source: "../maps/van_extra1_albedo.jpg"
    }
    PrincipledMaterial {
        id: van_extra1_material
        objectName: "van_extra1"
        baseColor: "#ff999999"
        baseColorMap: __textures_van_extra1_albedo_jpg_texture
    }

    // Nodes:
    Node {
        id: blueVan_obj
        objectName: "BlueVan.obj"
        Model {
            id: van_body_extra1_006
            objectName: "van_body_extra1.006"
            source: "../meshes/van_body_extra1_006_mesh.mesh"
            materials: [
                van_extra1_material
            ]
        }
    }

    // Animations:
}
