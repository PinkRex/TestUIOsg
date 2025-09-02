import QtQuick
import QtQuick3D

Node {
    id: node13

    // Resources
    Texture {
        id: __textures_body_t_albedo_jpeg_texture
        objectName: "./textures/body_t_albedo.jpeg"
        source: "../maps/body_t_albedo.jpeg"
    }
    Texture {
        id: __textures_other_T_albedo_jpg_texture6
        objectName: "./textures/other_T_albedo.jpg"
        source: "../maps/other_T_albedo.jpg"
    }
    Texture {
        id: _textures_window_t_albedo_jpg_texture
        objectName: ".textures/window_t_albedo.jpg"
        source: "../maps/window_t_albedo.jpg"
    }
    Texture {
        id: __textures_light_t_albedo_jpg_texture11
        objectName: "./textures/light_t_albedo.jpg"
        source: "../maps/light_t_albedo.jpg"
    }
    PrincipledMaterial {
        id: body_t_009_material
        objectName: "body_t.009"
        baseColor: "#ff999999"
        baseColorMap: __textures_body_t_albedo_jpeg_texture
    }
    PrincipledMaterial {
        id: other_T_008_material
        objectName: "other_T.008"
        baseColor: "#ff999999"
        baseColorMap: __textures_other_T_albedo_jpg_texture6
    }
    PrincipledMaterial {
        id: window_t_010_material
        objectName: "window_t.010"
        baseColor: "#ff999999"
        baseColorMap: _textures_window_t_albedo_jpg_texture
    }
    PrincipledMaterial {
        id: light_t_008_material
        objectName: "light_t.008"
        baseColor: "#ff999999"
        baseColorMap: __textures_light_t_albedo_jpg_texture11
    }

    // Nodes:
    Node {
        id: policeCar_obj
        objectName: "PoliceCar.obj"
        Model {
            id: car_p
            objectName: "car_p"
            source: "../meshes/car_p_mesh.mesh"
            materials: [
                body_t_009_material,
                other_T_008_material,
                window_t_010_material,
                light_t_008_material
            ]
        }
    }

    // Animations:
}
