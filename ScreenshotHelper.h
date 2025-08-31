// ScreenshotHelper.h
#pragma once
#include <QObject>
#include <QQuickWindow>

class ScreenshotHelper : public QObject
{
    Q_OBJECT
public:
    explicit ScreenshotHelper(QObject *parent = nullptr);

    Q_INVOKABLE void captureAndCrop(QQuickWindow *window,
                                    int x, int y, int w, int h,
                                    const QString &filePath);
};
