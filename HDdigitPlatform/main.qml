import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import CustomPaintItem 1.0
import CTools 1.0
ApplicationWindow {
    title: qsTr("Hello World")
    maximumHeight: 768;
    minimumHeight: 768;
    maximumWidth: 1024;
    minimumWidth: 1024;
    visible: true


    MainForm {
        anchors.fill: parent

        //待机界面
        Standby{
            id:standby
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("sdfdsfdsf")
                    globalMenu.visible = true
                }
            }
        }
        //全功能菜单
        GlobalMenu{
            id: globalMenu
            anchors.fill: parent
            visible: false
        }

    }

}
