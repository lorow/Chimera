#include <QQmlApplicationEngine>
#include <QGuiApplication>
#include <QQmlContext>

#include "src/loginManager/loginmanager.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    loginManager lManager;

    QQmlContext* ctx = engine.rootContext();
    ctx->setContextProperty("loginManager", &lManager);

    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
