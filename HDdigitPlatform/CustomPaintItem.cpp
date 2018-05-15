#include "CustomPaintItem.h"
#include <QPainter>
#include <QTimer>
CustomPaintItem::CustomPaintItem(QQuickItem* parent)
    :QQuickPaintedItem(parent)
{
}

CustomPaintItem::~CustomPaintItem()
{

}

void CustomPaintItem::paint(QPainter * painter)
{
    //judge the Animation Type

    //buildings type
    switch (m_Type) {
    case 0:
    {
        int row = m_Row;
        int column = 3;
        int curItemHeight = this->height()/row;
        int curItemwidth =this->width()/column;
        for(int i = 0; i < row; ++i)
            for(int j = 0; j < column; ++j)
            {
                if((0 == i || 1 == i)&&(0 ==j || 2 == j))
                    continue;
                if((i >= row -2 )&& 1 == j)
                    continue;
                if(isLightOn())
                {
                    painter->drawPixmap(QRect(j*curItemwidth,i*curItemHeight,curItemwidth,curItemHeight),QPixmap(":/LightOn"),QRect(0,0,26,14));
                }
                else
                {
                    painter->drawPixmap(QRect(j*curItemwidth,i*curItemHeight,curItemwidth,curItemHeight),QPixmap(":/LightOff"),QRect(0,0,26,14));
                }
            }
    }
        break;
    case 1:
    {
        int row = m_Row;
        int column = 4;
        int curItemHeight = this->height()/row;
        int curItemwidth =this->width()/column;
        for(int i = 0; i < row; ++i)
            for(int j = 0; j < column; ++j)
            {
                if((i >= row -2 )&& (1 == j || 2 == j))
                    continue;
                if(isLightOn())
                {
                    painter->drawPixmap(QRect(j*curItemwidth,i*curItemHeight,curItemwidth,curItemHeight),QPixmap(":/LightOn2"),QRect(0,0,21,25));
                }
                else
                {
                    painter->drawPixmap(QRect(j*curItemwidth,i*curItemHeight,curItemwidth,curItemHeight),QPixmap(":/LightOff2"),QRect(0,0,21,25));
                }
            }
    }
        break;
    case 2:
    {
        for(int i = 0; i < 20 ; ++i)
        {

            int curX = qrand() % ((int)this->width());
            int curY = qrand() % ((int)this->height());
            if(curY > this->height() - 80)
                continue;
            int curSize = qrand() % 80;
            painter->drawPixmap(QRect(curX,curY,curSize,curSize),QPixmap(":/star"),QRect(0,0,83,71));
        }
    }
        break;
    case 3:
    {
        QString strPicPath ;
        QString lightOn  = ":/streetLightOn";
        QString lightOff  = ":/streetLightOff";
        isLightOn(strPicPath,lightOn,lightOff);
        painter->drawPixmap(QRect(160,0,50,70),QPixmap(strPicPath));
        isLightOn(strPicPath,lightOn,lightOff);
        painter->drawPixmap(QRect(280,0,50,70),QPixmap(strPicPath));
        isLightOn(strPicPath,lightOn,lightOff);
        painter->drawPixmap(QRect(320,0,50,70),QPixmap(strPicPath));
        isLightOn(strPicPath,lightOn,lightOff);
        painter->drawPixmap(QRect(450,0,50,70),QPixmap(strPicPath));
        isLightOn(strPicPath,lightOn,lightOff);
        painter->drawPixmap(QRect(890,0,50,70),QPixmap(strPicPath));

    }
        break;
    default:
        break;
    }
}

bool CustomPaintItem::isLightOn( QString picPath  ,  QString lightOn,   QString lightOff )
{
    if(rand() % 2)
        picPath =lightOn;
    else
        picPath = lightOff;
 return (bool)(rand() % 2);
}

