#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "testgenerator.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif



    QGuiApplication app(argc, argv);


    testGenerator *mytest = new testGenerator;

    QQmlApplicationEngine engine;

    //const QUrl url(QStringLiteral("qrc:/main.qml"));


    engine.rootContext()->setContextProperty("test",mytest);


    const QUrl url(QStringLiteral("qrc:/main.qml"));
        QObject::connect(
            &engine, &QQmlApplicationEngine::objectCreated,
            &app, [url](QObject* obj, const QUrl& objUrl) {
                if (!obj && url == objUrl)
                    QCoreApplication::exit(-1);
            },
            Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}

