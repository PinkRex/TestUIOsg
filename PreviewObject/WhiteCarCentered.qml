import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    Texture {
        id: _home_duc_Documents_3DObj_WhiteCar_Body_diff_jpg_texture
        objectName: "/home/duc/Documents/3DObj/WhiteCar/Body_diff.jpg"
        source: "maps/Body_diff.jpg"
    }
    PrincipledMaterial {
        id: tire_002_material
        objectName: "Tire.002"
        baseColor: "#ff161616"
    }
    PrincipledMaterial {
        id: black_plast_002_material
        objectName: "black_plast.002"
        baseColor: "#ff222222"
    }
    PrincipledMaterial {
        id: back_light_002_material
        objectName: "Back_light.002"
        baseColor: "#ff8d0000"
    }
    PrincipledMaterial {
        id: chrom_002_material
        objectName: "Chrom.002"
        baseColor: "#ff575757"
    }
    PrincipledMaterial {
        id: front_glass_002_material
        objectName: "Front_glass.002"
        baseColor: "#ff969696"
    }
    PrincipledMaterial {
        id: default_002_material
        objectName: "default.002"
        baseColor: "#ffa6a6a6"
    }
    PrincipledMaterial {
        id: brake_disk_002_material
        objectName: "Brake_disk.002"
        baseColor: "#ffb0b0b0"
    }
    PrincipledMaterial {
        id: material__21_002_material
        objectName: "Material__21.002"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_WhiteCar_Body_diff_jpg_texture
    }

    // Nodes:
    Node {
        id: whiteCarCentered_obj
        objectName: "WhiteCarCentered.obj"
        Model {
            id: whiteCar
            objectName: "WhiteCar"
            source: "meshes/whiteCar_mesh.mesh"
            materials: [
                tire_002_material,
                black_plast_002_material,
                back_light_002_material,
                chrom_002_material,
                front_glass_002_material,
                default_002_material,
                brake_disk_002_material,
                material__21_002_material
            ]
        }
    }

    // Animations:
}
