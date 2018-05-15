#ifndef CTOOLS_H
#define CTOOLS_H

#include <QObject>

class CTools : public QObject
{
    Q_OBJECT
public:
    explicit CTools(QObject *parent = 0);
    ~CTools();

    Q_INVOKABLE QString getTime();
    Q_INVOKABLE QString getDate();
//    Q_INVOKABLE QString getTime();
signals:

public slots:
};

#endif // CTOOLS_H
