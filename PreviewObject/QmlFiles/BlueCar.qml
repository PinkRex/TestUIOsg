import QtQuick
import QtQuick3D

Node {
    id: node0

    // Resources
    Texture {
        id: __textures_Body_bmp_texture
        objectName: "./textures/Body.bmp"
        source: "../maps/Body.bmp"
    }
    Texture {
        id: __textures_Grill_bmp_texture
        objectName: "./textures/Grill.bmp"
        source: "../maps/Grill.bmp"
    }
    Texture {
        id: __textures_Brake_Light_bmp_texture
        objectName: "./textures/Brake_Light.bmp"
        source: "../maps/Brake_Light.bmp"
    }
    Texture {
        id: __textures_Bumpers_bmp_texture
        objectName: "./textures/Bumpers.bmp"
        source: "../maps/Bumpers.bmp"
    }
    Texture {
        id: __textures_Wheel_bmp_texture
        objectName: "./textures/Wheel.bmp"
        source: "../maps/Wheel.bmp"
    }
    Texture {
        id: __textures_License_Plate___Rear_bmp_texture
        objectName: "./textures/License_Plate_-_Rear.bmp"
        source: "../maps/License_Plate_-_Rear.bmp"
    }
    Texture {
        id: __textures_License_Plate___Front_bmp_texture
        objectName: "./textures/License_Plate_-_Front.bmp"
        source: "../maps/License_Plate_-_Front.bmp"
    }
    Texture {
        id: __textures_Rear_Window_bmp_texture
        objectName: "./textures/Rear_Window.bmp"
        source: "../maps/Rear_Window.bmp"
    }
    Texture {
        id: __textures_Mirrors_bmp_texture
        objectName: "./textures/Mirrors.bmp"
        source: "../maps/Mirrors.bmp"
    }
    PrincipledMaterial {
        id: body_001_material
        objectName: "Body.001"
        baseColor: "#ff999999"
        baseColorMap: __textures_Body_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: brake_Light_001_material
        objectName: "Brake_Light.001"
        baseColor: "#ff999999"
        baseColorMap: __textures_Brake_Light_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: interior_001_material
        objectName: "Interior.001"
        baseColor: "#ff000000"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: exhaust_001_material
        objectName: "Exhaust.001"
        baseColor: "#ffbfbfbf"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: wheel_001_material
        objectName: "Wheel.001"
        baseColor: "#ff999999"
        baseColorMap: __textures_Wheel_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: underside_001_material
        objectName: "Underside.001"
        baseColor: "#ff3f3f3f"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: mirrors_001_material
        objectName: "Mirrors.001"
        baseColor: "#ff999999"
        baseColorMap: __textures_Mirrors_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: glass_001_material
        objectName: "Glass.001"
        baseColor: "#ff000000"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: rear_Window_001_material
        objectName: "Rear_Window.001"
        baseColor: "#ff999999"
        baseColorMap: __textures_Rear_Window_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: license_Plate___Front_001_material
        objectName: "License_Plate_-_Front.001"
        baseColor: "#ff999999"
        baseColorMap: __textures_License_Plate___Front_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: license_Plate___Rear_001_material
        objectName: "License_Plate_-_Rear.001"
        baseColor: "#ff999999"
        baseColorMap: __textures_License_Plate___Rear_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: bumpers_001_material
        objectName: "Bumpers.001"
        baseColor: "#ff999999"
        baseColorMap: __textures_Bumpers_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: black_001_material
        objectName: "Black.001"
        baseColor: "#ff1a1a1a"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: silver_001_material
        objectName: "Silver.001"
        baseColor: "#ffbfbfbf"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: hooks_001_material
        objectName: "Hooks.001"
        baseColor: "#ffa2b7cb"
        indexOfRefraction: 0.0010000000474974513
    }
    PrincipledMaterial {
        id: grill_001_material
        objectName: "Grill.001"
        baseColor: "#ff999999"
        baseColorMap: __textures_Grill_bmp_texture
        indexOfRefraction: 0.0010000000474974513
    }

    // Nodes:
    Node {
        id: blueCar_obj
        objectName: "BlueCar.obj"
        Model {
            id: _Subaru_Loyale
            objectName: "_Subaru-Loyale"
            source: "../meshes/_Subaru_Loyale_mesh.mesh"
            materials: [
                body_001_material,
                grill_001_material,
                hooks_001_material,
                silver_001_material,
                black_001_material,
                bumpers_001_material,
                license_Plate___Rear_001_material,
                license_Plate___Front_001_material,
                rear_Window_001_material,
                glass_001_material,
                mirrors_001_material,
                underside_001_material,
                wheel_001_material,
                exhaust_001_material,
                interior_001_material,
                brake_Light_001_material
            ]
        }
    }

    // Animations:
}
