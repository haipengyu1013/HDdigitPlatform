import QtQuick 2.0
import CustomPaintItem 1.0
import CTools 1.0

Item {
    id: standby
    anchors.fill: parent
    Image {
        id: standbyBackground
        anchors.fill: parent
        source: "image/StandbyBackground.png"
        onVisibleChanged:
        {
            if(true == parent.visible)
            lightAnimation.start();
        }
    }

    //stars
    CustomPaintItem{
        id: star
        width: parent.width;
        height: 300;
//            row: 0;
        type: 2;
    }

    //buidings lights
    CustomPaintItem{
        id: buildings1
        x: 116;
        y: 410;
        width: 47;
        height: 185;
        row: 24;
        type: 0;
    }

    CustomPaintItem{
        id: buildings2
        x: 0;
        y: 410;
        width: 52;
        height: 159;
        row: 12;
        type: 1;
    }

    CustomPaintItem{
        id: buildings3
        x: 188;
        y: 440;
        width: 47;
        height: 148;
        row: 21;
        type: 0;
    }
    CustomPaintItem{
        id: buildings4
        x: 873;
        y: 473;
        width: 31;
        height: 123;
        row: 24;
        type: 0;
    }
    CustomPaintItem{
        id: buildings5
        x: 922;
        y: 473;
        width: 31;
        height: 123;
        row: 24;
        type: 0;
    }



    CustomPaintItem{
        id: streetLights
        x: 0;
        y: 523;
        width: 1024;
        height: 70;
        row: 0;
        type: 3;
    }

    Item
    {
        x: 337
        y: 237
        width: 340
        height: 205


        Image {
            id: weather
            x: 40
            y: 10
            source: "image/cloud.png"
        }
        Text{
            id:temperatureAndCounty
            x: 180
            y: 20
            font.pixelSize: 23
            color: "white"
            text: "25℃，XiaMen"

        }
        Text {
            id: clockDate
            x: 220
            y: 55
            font.pixelSize: 15
            color: "white"
            text: tools.getDate();
        }
        Text {
            id: clockTime
            anchors.horizontalCenter: parent.horizontalCenter
            y: 70
            text: tools.getTime();
            font.pixelSize: 100
            color: "white"
        }
    }


    Timer{
        id: lightAnimation
        interval: 1000;
        running: true;
        repeat: true;
        onTriggered:
        {
            buildings1.update()
            buildings2.update()
            buildings3.update()
            buildings4.update()
            buildings5.update()
            star.update()
            streetLights.update()
            clockTime.text = tools.getTime();
            clockDate.text = tools.getDate();
        }
    }

    CTools
    {
     id:tools

    }

}

