import QtQuick
import QtQuick3D

Node {
    id: node6

    // Resources
    Texture {
        id: __textures_van_extra2_albedo_jpg_texture
        objectName: "./textures/van_extra2_albedo.jpg"
        source: "../maps/van_extra2_albedo.jpg"
    }
    PrincipledMaterial {
        id: van_extra2_material
        objectName: "van_extra2"
        baseColor: "#ff999999"
        baseColorMap: __textures_van_extra2_albedo_jpg_texture
    }

    // Nodes:
    Node {
        id: grayVan_obj
        objectName: "GrayVan.obj"
        Model {
            id: van_body_extra1_007
            objectName: "van_body_extra1.007"
            source: "../meshes/van_body_extra1_007_mesh.mesh"
            materials: [
                van_extra2_material
            ]
        }
    }

    // Animations:
}
