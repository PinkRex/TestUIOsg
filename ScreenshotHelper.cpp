// ScreenshotHelper.cpp
#include "ScreenshotHelper.h"
#include <QGuiApplication>
#include <QScreen>
#include <QPixmap>
#include <QDebug>

ScreenshotHelper::ScreenshotHelper(QObject *parent) : QObject(parent) {}

void ScreenshotHelper::captureAndCrop(QQuickWindow *window,
                                      int x, int y, int w, int h,
                                      const QString &filePath)
{
    qDebug() << x << y << w << h;

    if (!window) {
        qWarning() << "No window available!";
        return;
    }

    QPixmap pixmap = QGuiApplication::primaryScreen()->grabWindow(window->winId());
    if (pixmap.isNull()) {
        qWarning() << "Failed to capture window!";
        return;
    }

    QRect cropRect(x, y, w, h);
    cropRect = cropRect.normalized();
    qDebug() << cropRect;
    QPixmap cropped = pixmap.copy(cropRect);

    if (cropped.save(filePath)) {
        qDebug() << "Saved cropped image to:" << filePath;
    } else {
        qWarning() << "Failed to save image!";
    }
}
