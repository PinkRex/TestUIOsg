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
)

qt_add_qml_module(appTestUI
    URI TestUI
    VERSION 1.0
    QML_FILES
        Main.qml
        Carousel.qml
        RESOURCES Resource.qrc
        SOURCES ScreenshotHelper.h ScreenshotHelper.cpp

        QML_FILES PreviewObject/BlueCarCentered.qml
        QML_FILES PreviewObject/GreenCarCentered.qml
        QML_FILES PreviewObject/JeepCarCentered.qml
        QML_FILES PreviewObject/RedBusCentered.qml
        QML_FILES PreviewObject/WhiteCarCentered.qml
        QML_FILES PreviewObject/WhiteVanCentered.qml

        RESOURCES PreviewObject/meshes/cube_005_mesh.mesh
        RESOURCES PreviewObject/meshes/dodgeChallenger_Plane_mesh.mesh
        RESOURCES PreviewObject/meshes/jeep_Renegade_2016_mesh.mesh
        RESOURCES PreviewObject/meshes/redBus_mesh.mesh
        RESOURCES PreviewObject/meshes/whiteCar_mesh.mesh
        RESOURCES PreviewObject/meshes/_Subaru_Loyale_mesh.mesh

        RESOURCES PreviewObject/maps/13936_Tourist_bus_with_open_top_diffuse.jpg
        RESOURCES PreviewObject/maps/13936_Tourist_bus_with_open_top_specular.jpg
        RESOURCES PreviewObject/maps/Body.bmp
        RESOURCES PreviewObject/maps/Body_diff.jpg
        RESOURCES PreviewObject/maps/Brake_Light.bmp
        RESOURCES PreviewObject/maps/Bumpers.bmp
        RESOURCES PreviewObject/maps/car_jeep_ren.jpg
        RESOURCES PreviewObject/maps/Grill.bmp
        RESOURCES PreviewObject/maps/Hafei.png
        RESOURCES PreviewObject/maps/License_Plate_-_Front.bmp
        RESOURCES PreviewObject/maps/License_Plate_-_Rear.bmp
        RESOURCES PreviewObject/maps/Mirrors.bmp
        RESOURCES PreviewObject/maps/Rear_Window.bmp
        RESOURCES PreviewObject/maps/Wheel.bmp
        RESOURCES PreviewObject/maps/wheel_tire_diffuse.jpg
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
