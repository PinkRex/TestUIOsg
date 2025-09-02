cmake_minimum_required(VERSION 3.16)

project(TestUI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS Quick3D)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appTestUI
    main.cpp
)

qt_add_resources(appTestUI "Resource"
    PREFIX "/"
    FILES   images/background.jpg
            images/leftBtn.jpg
            images/rightBtn.jpg
            images/backgroundImage.png

    FILES   ObjectThumbnail/BlackPickup.png
            ObjectThumbnail/BlackPickupV2.png
            ObjectThumbnail/BlackPickupV3.png
            ObjectThumbnail/BlackSUV.png
            ObjectThumbnail/BlueAPC.png
            ObjectThumbnail/BlueCar.png
            ObjectThumbnail/BlueVan.png
            ObjectThumbnail/GrayVan.png
            ObjectThumbnail/GreenCar.png
            ObjectThumbnail/PoliceCar.png
            ObjectThumbnail/RedBus.png
            ObjectThumbnail/RedCar.png
            ObjectThumbnail/RollRoyce.png
            ObjectThumbnail/WhiteCar.png
            ObjectThumbnail/WhiteCarV2.png
            ObjectThumbnail/WhiteCarV3.png
            ObjectThumbnail/WhiteSUV.png
            ObjectThumbnail/WhiteTruck.png

    FILES   PreviewObject/QmlFiles/BlackPickup.qml
            PreviewObject/QmlFiles/BlackPickupV2.qml
            PreviewObject/QmlFiles/BlackPickupV3.qml
            PreviewObject/QmlFiles/BlackSUV.qml
            PreviewObject/QmlFiles/BlueAPC.qml
            PreviewObject/QmlFiles/BlueCar.qml
            PreviewObject/QmlFiles/BlueVan.qml
            PreviewObject/QmlFiles/GrayVan.qml
            PreviewObject/QmlFiles/GreenCar.qml
            PreviewObject/QmlFiles/PoliceCar.qml
            PreviewObject/QmlFiles/RedBus.qml
            PreviewObject/QmlFiles/RedCar.qml
            PreviewObject/QmlFiles/RollRoyce.qml
            PreviewObject/QmlFiles/WhiteCar.qml
            PreviewObject/QmlFiles/WhiteCarV2.qml
            PreviewObject/QmlFiles/WhiteCarV3.qml
            PreviewObject/QmlFiles/WhiteSUV.qml
            PreviewObject/QmlFiles/WhiteTruck.qml
)

qt_add_qml_module(appTestUI
    URI TestUI
    VERSION 1.0
    QML_FILES
        Main.qml
        Carousel.qml
        RESOURCES Resource.qrc
        SOURCES ScreenshotHelper.h ScreenshotHelper.cpp

        QML_FILES PreviewObject/QmlFiles/BlackPickup.qml
        QML_FILES PreviewObject/QmlFiles/BlackPickupV2.qml
        QML_FILES PreviewObject/QmlFiles/BlackPickupV3.qml
        QML_FILES PreviewObject/QmlFiles/BlackSUV.qml
        QML_FILES PreviewObject/QmlFiles/BlueAPC.qml
        QML_FILES PreviewObject/QmlFiles/BlueCar.qml
        QML_FILES PreviewObject/QmlFiles/BlueVan.qml
        QML_FILES PreviewObject/QmlFiles/GrayVan.qml
        QML_FILES PreviewObject/QmlFiles/GreenCar.qml
        QML_FILES PreviewObject/QmlFiles/PoliceCar.qml
        QML_FILES PreviewObject/QmlFiles/RedBus.qml
        QML_FILES PreviewObject/QmlFiles/RedCar.qml
        QML_FILES PreviewObject/QmlFiles/RollRoyce.qml
        QML_FILES PreviewObject/QmlFiles/WhiteCar.qml
        QML_FILES PreviewObject/QmlFiles/WhiteCarV2.qml
        QML_FILES PreviewObject/QmlFiles/WhiteCarV3.qml
        QML_FILES PreviewObject/QmlFiles/WhiteSUV.qml
        QML_FILES PreviewObject/QmlFiles/WhiteTruck.qml

        RESOURCES PreviewObject/meshes/btr_body_mesh.mesh
        RESOURCES PreviewObject/meshes/car_p_mesh.mesh
        RESOURCES PreviewObject/meshes/dodgeChallenger_Plane_mesh.mesh
        RESOURCES PreviewObject/meshes/f1Car_mesh.mesh
        RESOURCES PreviewObject/meshes/jeep_Renegade_2016_mesh.mesh
        RESOURCES PreviewObject/meshes/muscle_body_mesh.mesh
        RESOURCES PreviewObject/meshes/pickupModern_mesh.mesh
        RESOURCES PreviewObject/meshes/pickUp_mesh.mesh
        RESOURCES PreviewObject/meshes/pickup_wheel_003_mesh.mesh
        RESOURCES PreviewObject/meshes/redBus_mesh.mesh
        RESOURCES PreviewObject/meshes/rrghost_hood_mesh.mesh
        RESOURCES PreviewObject/meshes/sedan_wheel_003_mesh.mesh
        RESOURCES PreviewObject/meshes/suv_body_mesh.mesh
        RESOURCES PreviewObject/meshes/truck_body_mesh.mesh
        RESOURCES PreviewObject/meshes/van_body_extra1_006_mesh.mesh
        RESOURCES PreviewObject/meshes/van_body_extra1_007_mesh.mesh
        RESOURCES PreviewObject/meshes/whiteCar_mesh.mesh
        RESOURCES PreviewObject/meshes/_Subaru_Loyale_mesh.mesh

        RESOURCES PreviewObject/maps/13936_Tourist_bus_with_open_top_diffuse.jpg
        RESOURCES PreviewObject/maps/13936_Tourist_bus_with_open_top_specular.jpg
        RESOURCES PreviewObject/maps/Body.bmp
        RESOURCES PreviewObject/maps/Body_diff.jpg
        RESOURCES PreviewObject/maps/body_t_albedo.jpeg
        RESOURCES PreviewObject/maps/body_t_albedo.jpg
        RESOURCES PreviewObject/maps/Brake_Light.bmp
        RESOURCES PreviewObject/maps/btr_albedo.jpg
        RESOURCES PreviewObject/maps/Bumpers.bmp
        RESOURCES PreviewObject/maps/car_jeep_ren.jpg
        RESOURCES PreviewObject/maps/Grill.bmp
        RESOURCES PreviewObject/maps/License_Plate_-_Front.bmp
        RESOURCES PreviewObject/maps/License_Plate_-_Rear.bmp
        RESOURCES PreviewObject/maps/light_t_albedo.jpg
        RESOURCES PreviewObject/maps/light_t_roughness.jpg
        RESOURCES PreviewObject/maps/Mirrors.bmp
        RESOURCES PreviewObject/maps/muscle_albedo.jpeg
        RESOURCES PreviewObject/maps/other_T_albedo.jpg
        RESOURCES PreviewObject/maps/pickup_albedo.jpg
        RESOURCES PreviewObject/maps/Rear_Window.bmp
        RESOURCES PreviewObject/maps/sedan_albedo.jpg
        RESOURCES PreviewObject/maps/suv_albedo.jpeg
        RESOURCES PreviewObject/maps/truck_albedo.jpeg
        RESOURCES PreviewObject/maps/van_extra1_albedo.jpg
        RESOURCES PreviewObject/maps/van_extra2_albedo.jpg
        RESOURCES PreviewObject/maps/Wheel.bmp
        RESOURCES PreviewObject/maps/wheel_tire_diffuse.jpg
        RESOURCES PreviewObject/maps/window_t_albedo.jpg
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appTestUI PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appTestUI
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appTestUI
    PRIVATE Qt6::Quick Qt6::Quick3D
)

include(GNUInstallDirs)
install(TARGETS appTestUI
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
