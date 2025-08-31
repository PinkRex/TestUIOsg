import QtQuick
import QtQuick3D

Node {
    id: node0

    // Resources
    Texture {
        id: _home_duc_Documents_3DObj_RedBus_13936_Tourist_bus_with_open_top_diffuse_jpg_texture
        objectName: "/home/duc/Documents/3DObj/RedBus/13936_Tourist_bus_with_open_top_diffuse.jpg"
        source: "maps/13936_Tourist_bus_with_open_top_diffuse.jpg"
    }
    Texture {
        id: _home_duc_Documents_3DObj_RedBus_wheel_tire_diffuse_jpg_texture
        objectName: "/home/duc/Documents/3DObj/RedBus/wheel_tire_diffuse.jpg"
        source: "maps/wheel_tire_diffuse.jpg"
    }
    PrincipledMaterial {
        id: glass_001_material
        objectName: "glass.001"
        baseColor: "#ff050505"
    }
    PrincipledMaterial {
        id: black_plastic_001_material
        objectName: "black_plastic.001"
        baseColor: "#ff2d2d2d"
    }
    PrincipledMaterial {
        id: rubber_001_material
        objectName: "rubber.001"
        baseColor: "#ff171717"
    }
    PrincipledMaterial {
        id: node09___Default_001_material
        objectName: "09___Default.001"
        baseColor: "#ffd51111"
    }
    PrincipledMaterial {
        id: metall_001_material
        objectName: "metall.001"
        baseColor: "#ffa9a9a9"
    }
    PrincipledMaterial {
        id: seat_001_material
        objectName: "seat.001"
    }
    PrincipledMaterial {
        id: node13936_Tourist_bus_with_open_top_001_material
        objectName: "13936_Tourist_bus_with_open_top.001"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_RedBus_13936_Tourist_bus_with_open_top_diffuse_jpg_texture
    }
    PrincipledMaterial {
        id: wheel_tire_001_material
        objectName: "wheel_tire.001"
        baseColor: "#ff999999"
        baseColorMap: _home_duc_Documents_3DObj_RedBus_wheel_tire_diffuse_jpg_texture
    }

    // Nodes:
    Node {
        id: redBusCentered_obj
        objectName: "RedBusCentered.obj"
        Model {
            id: redBus
            objectName: "RedBus"
            source: "meshes/redBus_mesh.mesh"
            materials: [
                glass_001_material,
                black_plastic_001_material,
                rubber_001_material,
                node09___Default_001_material,
                metall_001_material,
                seat_001_material,
                node13936_Tourist_bus_with_open_top_001_material,
                wheel_tire_001_material
            ]
        }
    }

    // Animations:
}
