import QtQuick
import QtQuick3D

Node {
    id: node7

    // Resources
    Texture {
        id: __textures_car_jeep_ren_jpg_texture
        objectName: "./textures/car_jeep_ren.jpg"
        source: "../maps/car_jeep_ren.jpg"
    }
    PrincipledMaterial {
        id: car_jeep_ren_001_material
        objectName: "car_jeep_ren.001"
        baseColor: "#ff999999"
        baseColorMap: __textures_car_jeep_ren_jpg_texture
    }
    PrincipledMaterial {
        id: frontColor_001_material
        objectName: "FrontColor.001"
    }

    // Nodes:
    Node {
        id: whiteSUV_obj
        objectName: "WhiteSUV.obj"
        Model {
            id: jeep_Renegade_2016
            objectName: "Jeep_Renegade_2016"
            source: "../meshes/jeep_Renegade_2016_mesh.mesh"
            materials: [
                car_jeep_ren_001_material,
                frontColor_001_material
            ]
        }
    }

    // Animations:
}
