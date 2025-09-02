import QtQuick
import QtQuick3D

Node {
    id: node14

    // Resources
    Texture {
        id: __textures_Body_diff_jpg_texture
        objectName: "./textures/Body_diff.jpg"
        source: "../maps/Body_diff.jpg"
    }
    PrincipledMaterial {
        id: tire_001_material
        objectName: "Tire.001"
        baseColor: "#ff161616"
    }
    PrincipledMaterial {
        id: black_plast_001_material
        objectName: "black_plast.001"
        baseColor: "#ff222222"
    }
    PrincipledMaterial {
        id: back_light_001_material
        objectName: "Back_light.001"
        baseColor: "#ff8d0000"
    }
    PrincipledMaterial {
        id: chrom_001_material
        objectName: "Chrom.001"
        baseColor: "#ff575757"
    }
    PrincipledMaterial {
        id: front_glass_001_material
        objectName: "Front_glass.001"
        baseColor: "#ff969696"
    }
    PrincipledMaterial {
        id: default_001_material
        objectName: "default.001"
        baseColor: "#ffa6a6a6"
    }
    PrincipledMaterial {
        id: brake_disk_001_material
        objectName: "Brake_disk.001"
        baseColor: "#ffb0b0b0"
    }
    PrincipledMaterial {
        id: material__21_001_material
        objectName: "Material__21.001"
        baseColor: "#ff999999"
        baseColorMap: __textures_Body_diff_jpg_texture
    }

    // Nodes:
    Node {
        id: whiteCarV3_obj
        objectName: "WhiteCarV3.obj"
        Model {
            id: whiteCar
            objectName: "WhiteCar"
            source: "../meshes/whiteCar_mesh.mesh"
            materials: [
                tire_001_material,
                black_plast_001_material,
                back_light_001_material,
                chrom_001_material,
                front_glass_001_material,
                default_001_material,
                brake_disk_001_material,
                material__21_001_material
            ]
        }
    }

    // Animations:
}
