import QtQuick
import QtQuick3D

Node {
    id: node1

    // Resources
    Texture {
        id: __textures_13936_Tourist_bus_with_open_top_diffuse_jpg_texture
        objectName: "./textures/13936_Tourist_bus_with_open_top_diffuse.jpg"
        source: "../maps/13936_Tourist_bus_with_open_top_diffuse.jpg"
    }
    Texture {
        id: __textures_wheel_tire_diffuse_jpg_texture
        objectName: "./textures/wheel_tire_diffuse.jpg"
        source: "../maps/wheel_tire_diffuse.jpg"
    }
    PrincipledMaterial {
        id: glass_002_material
        objectName: "glass.002"
        baseColor: "#ff050505"
    }
    PrincipledMaterial {
        id: black_plastic_002_material
        objectName: "black_plastic.002"
        baseColor: "#ff2d2d2d"
    }
    PrincipledMaterial {
        id: rubber_002_material
        objectName: "rubber.002"
        baseColor: "#ff171717"
    }
    PrincipledMaterial {
        id: node09___Default_002_material
        objectName: "09___Default.002"
        baseColor: "#ffd51111"
    }
    PrincipledMaterial {
        id: metall_002_material
        objectName: "metall.002"
        baseColor: "#ffa9a9a9"
    }
    PrincipledMaterial {
        id: seat_002_material
        objectName: "seat.002"
    }
    PrincipledMaterial {
        id: node13936_Tourist_bus_with_open_top_002_material
        objectName: "13936_Tourist_bus_with_open_top.002"
        baseColor: "#ff999999"
        baseColorMap: __textures_13936_Tourist_bus_with_open_top_diffuse_jpg_texture
    }
    PrincipledMaterial {
        id: wheel_tire_002_material
        objectName: "wheel_tire.002"
        baseColor: "#ff999999"
        baseColorMap: __textures_wheel_tire_diffuse_jpg_texture
    }

    // Nodes:
    Node {
        id: redBus_obj
        objectName: "RedBus.obj"
        Model {
            id: redBus
            objectName: "RedBus"
            source: "../meshes/redBus_mesh.mesh"
            materials: [
                glass_002_material,
                black_plastic_002_material,
                rubber_002_material,
                node09___Default_002_material,
                metall_002_material,
                seat_002_material,
                node13936_Tourist_bus_with_open_top_002_material,
                wheel_tire_002_material
            ]
        }
    }

    // Animations:
}
