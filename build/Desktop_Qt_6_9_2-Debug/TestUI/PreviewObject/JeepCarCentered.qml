import QtQuick
import QtQuick3D

Node {
    id: node2

    // Resources
    Texture {
        id: _home_duc_Documents_3DObj_JeepCar_car_jeep_ren_jpg_texture
        objectName: "/home/duc/Documents/3DObj/JeepCar/car_jeep_ren.jpg"
        source: "maps/car_jeep_ren.jpg"
    }
    PrincipledMaterial {
        id: car_jeep_ren_material
        objectName: "car_jeep_ren"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_JeepCar_car_jeep_ren_jpg_texture
    }
    PrincipledMaterial {
        id: frontColor_material
        objectName: "FrontColor"
    }

    // Nodes:
    Node {
        id: jeepCarCentered_obj
        objectName: "JeepCarCentered.obj"
        Model {
            id: jeep_Renegade_2016
            objectName: "Jeep_Renegade_2016"
            source: "meshes/jeep_Renegade_2016_mesh.mesh"
            materials: [
                car_jeep_ren_material,
                frontColor_material
            ]
        }
    }

    // Animations:
}
