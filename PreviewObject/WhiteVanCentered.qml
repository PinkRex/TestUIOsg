import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    Texture {
        id: _home_duc_Documents_3DObj_WhiteVan_Hafei_png_texture
        objectName: "/home/duc/Documents/3DObj/WhiteVan/Hafei.png"
        source: "maps/Hafei.png"
    }
    PrincipledMaterial {
        id: material_001_material
        objectName: "Material.001"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_WhiteVan_Hafei_png_texture
        indexOfRefraction: 1.4500000476837158
    }

    // Nodes:
    Node {
        id: whiteVanCentered_obj
        objectName: "WhiteVanCentered.obj"
        Model {
            id: cube_005
            objectName: "Cube.005"
            source: "meshes/cube_005_mesh.mesh"
            materials: [
                material_001_material
            ]
        }
    }

    // Animations:
}
