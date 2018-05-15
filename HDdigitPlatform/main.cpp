#include "CustomPaintItem.h"
#include "Tools.h"
#include <QApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    //register the CustomPaintItem
    qmlRegisterType<CustomPaintItem>("CustomPaintItem",1,0,"CustomPaintItem");
    //register the Tools
    qmlRegisterType<CTools>("CTools",1,0,"CTools");


    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
