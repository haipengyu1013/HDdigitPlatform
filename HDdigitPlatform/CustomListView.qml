import QtQuick 2.0
import QtQuick.Layouts 1.1
Item{
    anchors.fill: parent;
    property string textColor: ""
    property bool interactiveable: true
    property alias customListView: customListView

    ListView {
        id: customListView
        x: 120
        width: parent.width - 120
        height: parent.height
        orientation: ListView.Horizontal
        interactive: interactiveable
        spacing: 50
        clip: true
        layoutDirection: Qt.RightToLeft
        boundsBehavior: Flickable.DragAndOvershootBounds
        highlightRangeMode: ListView.StrictlyEnforceRange
        currentIndex: 0
        delegate: Item{
            width: 50
            height: parent.height
            Text{
                id: text
                anchors.top:parent.top
                anchors.topMargin: 10
                anchors.horizontalCenter: parent.horizontalCenter
                text: iconText
                color: textColor
                smooth: true
                font.pixelSize:  mouseArea.pressed ? 11 : 13
            }
            Image{
                id: image
                anchors.top:text.bottom
                anchors.topMargin: 28
                Layout.alignment: Qt.AlignCenter
                source: iconPath
                scale: mouseArea.pressed ? 0.8 : 1
            }
            Image{
                id:subImage
                anchors.top:image.bottom
                anchors.topMargin: mouseArea.pressed ? -10 : 0
                source: iconPath
                opacity: 0.5
                mirror: true
                scale: mouseArea.pressed ? 0.8 : 1
                transform: [
                    Rotation { origin.x: 25; origin.y: 0; axis { x: 0; y: 1; z: 0 } angle: 180 },
                    Rotation { origin.x: 0; origin.y: 25; axis { x: 1; y: 0; z: 0 } angle: 180 },
                    Scale { origin.x: 25; origin.y: 25; yScale: 0.8}
                ]
            }
            MouseArea{
                id: mouseArea
                anchors.fill: parent
            }

        }
    }

    Image{
        id: inCrementbutton
        anchors.verticalCenter: parent.verticalCenter
        source: "image/globalMenu/button.png"
        visible: interactiveable
        MouseArea{
            anchors.fill: parent
            onClicked: {
                customListView.incrementCurrentIndex()
            }
        }
    }
}
