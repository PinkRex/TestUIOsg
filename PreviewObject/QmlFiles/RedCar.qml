import QtQuick
import QtQuick3D

Node {
    id: node2

    // Resources
    PrincipledMaterial {
        id: jant_material
        objectName: "jant"
        baseColor: "#ffa8a8a8"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: _________material
        objectName: "Материал"
        baseColor: "#ff121212"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: mat_1_material
        objectName: "Mat.1"
        baseColor: "#ff000000"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: arka_____k_material
        objectName: "arka_ıışık"
        baseColor: "#ffffffff"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: mat_1_1_material
        objectName: "Mat.1_1"
        baseColor: "#ff000000"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: mat_1_2_material
        objectName: "Mat.1_2"
        baseColor: "#ffff0000"
        indexOfRefraction: 1
    }

    // Nodes:
    Node {
        id: redCar_obj
        objectName: "RedCar.obj"
        Model {
            id: f1Car
            objectName: "F1Car"
            source: "../meshes/f1Car_mesh.mesh"
            materials: [
                jant_material,
                _________material,
                mat_1_material,
                arka_____k_material,
                mat_1_1_material,
                mat_1_2_material
            ]
        }
    }

    // Animations:
}
