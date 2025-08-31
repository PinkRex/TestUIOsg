import QtQuick
import QtQuick3D

Node {
    id: node3

    // Resources
    Texture {
        id: _home_duc_Documents_3DObj_BlueCar_Body_bmp_texture
        objectName: "/home/duc/Documents/3DObj/BlueCar/Body.bmp"
        source: "maps/Body.bmp"
    }
    Texture {
        id: _home_duc_Documents_3DObj_BlueCar_Grill_bmp_texture
        objectName: "/home/duc/Documents/3DObj/BlueCar/Grill.bmp"
        source: "maps/Grill.bmp"
    }
    Texture {
        id: _home_duc_Documents_3DObj_BlueCar_Brake_Light_bmp_texture
        objectName: "/home/duc/Documents/3DObj/BlueCar/Brake_Light.bmp"
        source: "maps/Brake_Light.bmp"
    }
    Texture {
        id: _home_duc_Documents_3DObj_BlueCar_Bumpers_bmp_texture
        objectName: "/home/duc/Documents/3DObj/BlueCar/Bumpers.bmp"
        source: "maps/Bumpers.bmp"
    }
    Texture {
        id: _home_duc_Documents_3DObj_BlueCar_Wheel_bmp_texture
        objectName: "/home/duc/Documents/3DObj/BlueCar/Wheel.bmp"
        source: "maps/Wheel.bmp"
    }
    Texture {
        id: _home_duc_Documents_3DObj_BlueCar_License_Plate___Rear_bmp_texture
        objectName: "/home/duc/Documents/3DObj/BlueCar/License_Plate_-_Rear.bmp"
        source: "maps/License_Plate_-_Rear.bmp"
    }
    Texture {
        id: _home_duc_Documents_3DObj_BlueCar_License_Plate___Front_bmp_texture
        objectName: "/home/duc/Documents/3DObj/BlueCar/License_Plate_-_Front.bmp"
        source: "maps/License_Plate_-_Front.bmp"
    }
    Texture {
        id: _home_duc_Documents_3DObj_BlueCar_Rear_Window_bmp_texture
        objectName: "/home/duc/Documents/3DObj/BlueCar/Rear_Window.bmp"
        source: "maps/Rear_Window.bmp"
    }
    Texture {
        id: _home_duc_Documents_3DObj_BlueCar_Mirrors_bmp_texture
        objectName: "/home/duc/Documents/3DObj/BlueCar/Mirrors.bmp"
        source: "maps/Mirrors.bmp"
    }
    PrincipledMaterial {
        id: body_material
        objectName: "Body"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_BlueCar_Body_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: brake_Light_material
        objectName: "Brake_Light"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_BlueCar_Brake_Light_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: interior_material
        objectName: "Interior"
        baseColor: "#ff000000"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: exhaust_material
        objectName: "Exhaust"
        baseColor: "#ffbfbfbf"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: wheel_material
        objectName: "Wheel"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_BlueCar_Wheel_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: underside_material
        objectName: "Underside"
        baseColor: "#ff3f3f3f"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: mirrors_material
        objectName: "Mirrors"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_BlueCar_Mirrors_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: glass_material
        objectName: "Glass"
        baseColor: "#ff000000"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: rear_Window_material
        objectName: "Rear_Window"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_BlueCar_Rear_Window_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: license_Plate___Front_material
        objectName: "License_Plate_-_Front"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_BlueCar_License_Plate___Front_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: license_Plate___Rear_material
        objectName: "License_Plate_-_Rear"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_BlueCar_License_Plate___Rear_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: bumpers_material
        objectName: "Bumpers"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_BlueCar_Bumpers_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: black_material
        objectName: "Black"
        baseColor: "#ff1a1a1a"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: silver_material
        objectName: "Silver"
        baseColor: "#ffbfbfbf"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: hooks_material
        objectName: "Hooks"
        baseColor: "#ffa2b7cb"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: grill_material
        objectName: "Grill"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_BlueCar_Grill_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }

    // Nodes:
    Node {
        id: blueCarCentered_obj
        objectName: "BlueCarCentered.obj"
        Model {
            id: _Subaru_Loyale
            objectName: "_Subaru-Loyale"
            source: "meshes/_Subaru_Loyale_mesh.mesh"
            materials: [
                body_material,
                grill_material,
                hooks_material,
                silver_material,
                black_material,
                bumpers_material,
                license_Plate___Rear_material,
                license_Plate___Front_material,
                rear_Window_material,
                glass_material,
                mirrors_material,
                underside_material,
                wheel_material,
                exhaust_material,
                interior_material,
                brake_Light_material
            ]
        }
    }

    // Animations:
}
