#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "ScreenshotHelper.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterType<ScreenshotHelper>("Utils", 1, 0, "ScreenshotHelper");
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("TestUI", "Main");

    return app.exec();
}
