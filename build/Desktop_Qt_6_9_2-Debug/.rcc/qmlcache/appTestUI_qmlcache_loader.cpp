#include <QtQml/qqmlprivate.h>
#include <QtCore/qdir.h>
#include <QtCore/qurl.h>
#include <QtCore/qhash.h>
#include <QtCore/qstring.h>

namespace QmlCacheGeneratedCode {
namespace _qt_qml_TestUI_Main_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TestUI_Carousel_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TestUI_PreviewObject_BlueCarCentered_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TestUI_PreviewObject_GreenCarCentered_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TestUI_PreviewObject_JeepCarCentered_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TestUI_PreviewObject_RedBusCentered_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TestUI_PreviewObject_WhiteCarCentered_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_TestUI_PreviewObject_WhiteVanCentered_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}

}
namespace {
struct Registry {
    Registry();
    ~Registry();
    QHash<QString, const QQmlPrivate::CachedQmlUnit*> resourcePathToCachedUnit;
    static const QQmlPrivate::CachedQmlUnit *lookupCachedUnit(const QUrl &url);
};

Q_GLOBAL_STATIC(Registry, unitRegistry)


Registry::Registry() {
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TestUI/Main.qml"), &QmlCacheGeneratedCode::_qt_qml_TestUI_Main_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TestUI/Carousel.qml"), &QmlCacheGeneratedCode::_qt_qml_TestUI_Carousel_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TestUI/PreviewObject/BlueCarCentered.qml"), &QmlCacheGeneratedCode::_qt_qml_TestUI_PreviewObject_BlueCarCentered_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TestUI/PreviewObject/GreenCarCentered.qml"), &QmlCacheGeneratedCode::_qt_qml_TestUI_PreviewObject_GreenCarCentered_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TestUI/PreviewObject/JeepCarCentered.qml"), &QmlCacheGeneratedCode::_qt_qml_TestUI_PreviewObject_JeepCarCentered_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TestUI/PreviewObject/RedBusCentered.qml"), &QmlCacheGeneratedCode::_qt_qml_TestUI_PreviewObject_RedBusCentered_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TestUI/PreviewObject/WhiteCarCentered.qml"), &QmlCacheGeneratedCode::_qt_qml_TestUI_PreviewObject_WhiteCarCentered_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/TestUI/PreviewObject/WhiteVanCentered.qml"), &QmlCacheGeneratedCode::_qt_qml_TestUI_PreviewObject_WhiteVanCentered_qml::unit);
    QQmlPrivate::RegisterQmlUnitCacheHook registration;
    registration.structVersion = 0;
    registration.lookupCachedQmlUnit = &lookupCachedUnit;
    QQmlPrivate::qmlregister(QQmlPrivate::QmlUnitCacheHookRegistration, &registration);
}

Registry::~Registry() {
    QQmlPrivate::qmlunregister(QQmlPrivate::QmlUnitCacheHookRegistration, quintptr(&lookupCachedUnit));
}

const QQmlPrivate::CachedQmlUnit *Registry::lookupCachedUnit(const QUrl &url) {
    if (url.scheme() != QLatin1String("qrc"))
        return nullptr;
    QString resourcePath = QDir::cleanPath(url.path());
    if (resourcePath.isEmpty())
        return nullptr;
    if (!resourcePath.startsWith(QLatin1Char('/')))
        resourcePath.prepend(QLatin1Char('/'));
    return unitRegistry()->resourcePathToCachedUnit.value(resourcePath, nullptr);
}
}
int QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appTestUI)() {
    ::unitRegistry();
    return 1;
}
Q_CONSTRUCTOR_FUNCTION(QT_MANGLE_NAMESPACE(qInitResources_qmlcache_appTestUI))
int QT_MANGLE_NAMESPACE(qCleanupResources_qmlcache_appTestUI)() {
    return 1;
}
