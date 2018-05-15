#include "Tools.h"
#include <QDateTime>
#include <QLocale>
#include <QTextStream>
#include <QDebug>

CTools::CTools(QObject *parent) : QObject(parent)
{

}

CTools::~CTools()
{

}

QString CTools::getTime()
{
    return QDateTime::currentDateTime().toString("HH:mm");
}

QString CTools::getDate()
{
//    qDebug()<<QDateTime::currentDateTime().toString(Qt::TextDate)<<QLocale::languageToString(QLocale::English);
    return QDateTime::currentDateTime().toString("ddd,MMMM dd");
}

