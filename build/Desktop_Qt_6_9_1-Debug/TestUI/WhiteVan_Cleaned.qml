import QtQuick
import QtQuick3D

Node {
    id: node0

    // Resources
    Texture {
        id: hafei_png_texture5
        objectName: "Hafei.png"
        source: "maps/Hafei.png"
    }
    PrincipledMaterial {
        id: material_001_material4
        objectName: "Material.001"
        baseColor: "#ff999999"
        baseColorMap: hafei_png_texture5
        indexOfRefraction: 1.4500000476837158
    }

    // Nodes:
    Node {
        id: whiteVan_Cleaned_obj1
        objectName: "WhiteVan_Cleaned.obj"
        Model {
            id: cube_0052
            objectName: "Cube.005"
            source: "meshes/cube_005_mesh3.mesh"
            materials: [
                material_001_material4
            ]
        }
    }

    // Animations:
}
