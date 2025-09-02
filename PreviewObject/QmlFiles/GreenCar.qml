import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: carColor_001_material
        objectName: "CarColor.001"
        baseColor: "#ff80ff80"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: glassColor_001_material
        objectName: "GlassColor.001"
        baseColor: "#ff050505"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: gridBlack_001_material
        objectName: "GridBlack.001"
        baseColor: "#ff070707"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: lightWhite_001_material
        objectName: "LightWhite.001"
        baseColor: "#ffcccccc"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: lightRed_001_material
        objectName: "LightRed.001"
        baseColor: "#ff660000"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: bottomBlack_001_material
        objectName: "BottomBlack.001"
        baseColor: "#ff000000"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: exhaustColor_001_material
        objectName: "ExhaustColor.001"
        baseColor: "#ff232323"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: tireColor_001_material
        objectName: "TireColor.001"
        baseColor: "#ff0f0f0f"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: rimColor_001_material
        objectName: "RimColor.001"
        baseColor: "#ff484848"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: brakeDiskColor_001_material
        objectName: "BrakeDiskColor.001"
        baseColor: "#ff565656"
        indexOfRefraction: 1
    }

    // Nodes:
    Node {
        id: greenCar_obj
        objectName: "GreenCar.obj"
        Model {
            id: dodgeChallenger_Plane
            objectName: "DodgeChallenger_Plane"
            source: "../meshes/dodgeChallenger_Plane_mesh.mesh"
            materials: [
                carColor_001_material,
                glassColor_001_material,
                gridBlack_001_material,
                lightWhite_001_material,
                lightRed_001_material,
                bottomBlack_001_material,
                exhaustColor_001_material,
                tireColor_001_material,
                rimColor_001_material,
                brakeDiskColor_001_material
            ]
        }
    }

    // Animations:
}
