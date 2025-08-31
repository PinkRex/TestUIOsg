import QtQuick
import QtQuick3D

Node {
    id: node1

    // Resources
    PrincipledMaterial {
        id: carColor_material
        objectName: "CarColor"
        baseColor: "#ff80ff80"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: glassColor_material
        objectName: "GlassColor"
        baseColor: "#ff050505"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: gridBlack_material
        objectName: "GridBlack"
        baseColor: "#ff070707"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: lightWhite_material
        objectName: "LightWhite"
        baseColor: "#ffcccccc"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: lightRed_material
        objectName: "LightRed"
        baseColor: "#ff660000"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: bottomBlack_material
        objectName: "BottomBlack"
        baseColor: "#ff000000"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: exhaustColor_material
        objectName: "ExhaustColor"
        baseColor: "#ff232323"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: tireColor_material
        objectName: "TireColor"
        baseColor: "#ff0f0f0f"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: rimColor_material
        objectName: "RimColor"
        baseColor: "#ff484848"
        indexOfRefraction: 1
    }
    PrincipledMaterial {
        id: brakeDiskColor_material
        objectName: "BrakeDiskColor"
        baseColor: "#ff565656"
        indexOfRefraction: 1
    }

    // Nodes:
    Node {
        id: greenCarCentered_obj
        objectName: "GreenCarCentered.obj"
        Model {
            id: dodgeChallenger_Plane
            objectName: "DodgeChallenger_Plane"
            source: "meshes/dodgeChallenger_Plane_mesh.mesh"
            materials: [
                carColor_material,
                glassColor_material,
                gridBlack_material,
                lightWhite_material,
                lightRed_material,
                bottomBlack_material,
                exhaustColor_material,
                tireColor_material,
                rimColor_material,
                brakeDiskColor_material
            ]
        }
    }

    // Animations:
}
