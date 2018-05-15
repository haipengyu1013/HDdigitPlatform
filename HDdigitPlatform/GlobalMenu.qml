import QtQuick 2.0
import CTools 1.0
Item {
    id:globalMenu



    Flickable{
        anchors.fill: parent
        contentWidth: flickArea.width
        contentHeight: flickArea.height
        boundsBehavior: Flickable.StopAtBounds
        Item{
            id: flickArea
            width: 1024
            height: 1536

            Image{
                id: image
                anchors.fill: parent
                source: "image/globalMenu/globalMenubackground.png"
            }

            Item{
                x: 40
                y: 100
                width: 810
                height: 115
                CustomListView{
                    customListView.model: testModel1
                    textColor: "#3fe6ff"
                    interactiveable: false
                }
            }

            Item{
                x: 40
                y: 100 + 160 + 5
                width: 810
                height: 115
                CustomListView{
                    customListView.model: testModel2
                    textColor: "#cfa23e"
                }
            }

            Item{
                x: 40
                y: 100 + 160 + 160 + 10
                width: 810
                height: 115
                CustomListView{
                    customListView.model: testModel3
                    textColor: "#a1ff30"
                    interactiveable: false
                }
            }

            Item{
                x: 40
                y: 100 + 160 + 160 + 160 + 10 + 10
                width: 810
                height: 115
                CustomListView{
                    customListView.model: testModel4
                    textColor: "#ff487b"
                    interactiveable: false
                }
            }


            Item{
                x: 40
                y: 620 + 160 + 5
                width: 810
                height: 115
                CustomListView{
                    customListView.model: testModel5
                    textColor: "#00a0ec"
                    interactiveable: false
                }
            }

            Item{
                x: 40
                y: 620 + 160 + 160 + 10
                width: 810
                height: 115
                CustomListView{
                    customListView.model: testModel6
                    textColor: "#cfe62c"
                    interactiveable: false
                }
            }

            Item{
                x: 40
                y: 620 + 160 + 160 + 160 + 15
                width: 810
                height: 115
                CustomListView{
                    customListView.model: testModel7
                    textColor: "#f75b1a"
                }

            }

            Item{
                x: 40
                y: 620 + 160 + 160 + 160 + 160 + 20
                width: 810
                height: 115
                CustomListView{
                    customListView.model: testModel8
                    textColor: "#57bab0"
                    interactiveable: false
                }
            }
        }
    }


    Item{
        width: 485
        height: 36

        Text{
            x: 20
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            color: "white"
            text: "ABB智能家居系统"

        }
        Image {
            id: weather
            x: 100
            y: -10
            scale: 0.4
            source: "image/cloud.png"
        }
        Text{
            x: 170
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            color: "white"
            text: "25℃，XiaMen"

        }
        Text {
            x: 250
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            color: "white"
            text: tools.getDate();
        }
        Text {
            anchors.verticalCenter: parent.verticalCenter
            x: 340
            text: tools.getTime();
            font.pixelSize: 12
            color: "white"
        }
    }
    CTools
    {
     id:tools

    }

    ListModel{
        id: testModel1
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
    }

    ListModel{
        id: testModel2
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
    }

    ListModel{
        id: testModel3
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
    }

    ListModel{
        id: testModel4
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
    }

    ListModel{
        id: testModel5
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
    }

    ListModel{
        id: testModel6
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
    }

    ListModel{
        id: testModel7
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
    }

    ListModel{
        id: testModel8
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
        ListElement{
            iconText: "通话记录"
            iconPath: "image/globalMenu/icon.png"
        }
    }
}

