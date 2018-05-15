#ifndef CUSTOMPAINTITEM_H
#define CUSTOMPAINTITEM_H

#include <QQuickItem>
#include <QQuickPaintedItem>
class CustomPaintItem : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(int row READ row WRITE setRow)
    Q_PROPERTY(int type READ type WRITE setType )
public:
    CustomPaintItem(QQuickItem* parent = 0);
    ~CustomPaintItem();

    //configer the Row
    int row() const { return m_Row;}
    void setRow(int row) { m_Row = row;}

    //consfiger the type
    int type() const { return m_Type;}
    void setType(int type) { m_Type = type;}

protected:
    void paint(QPainter*);

private:
    bool isLightOn( QString picPath = ("") ,  QString lightOn = (""),  QString lightOff = (""));                   //judge Light On

    int m_Row;                          //Current Row
    int m_Type;                         //Current Type
};

#endif // CUSTOMPAINTITEM_H
