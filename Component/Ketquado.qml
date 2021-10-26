import QtQuick 2.4

import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0


Item {

    property color colorBorder: "blue"

    property string titleName: "ten tieu de"
    property color colorTitleName: "blue"

    /// Hien thi thong tin so do/ gia tri so luong, slng

    property string txtMain:"35.256"
    property color colorTxtMain: "blue"


//    thong so
    property string upLimit: "+0.125"
    property string downLimit: "-0.125"
    property color colorLimit: "blue"


    QtObject {

    }


    Rectangle {
        id:ketquado

        width: 261
        height: 89

        border.color: "blue"
        border.width: 2
        radius: 8

        Text {
            id:txt
            text: titleName

            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 4
            anchors.topMargin: 2

            font.pixelSize: 15
            font.family: "Segoe UI"

            color: colorTitleName

        }

        Text {
            id: txtmain
            text: txtMain
            font {
                pixelSize: 50
                family: "Segoe UI"
                bold: true
            }
            anchors.horizontalCenter:  parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 28

            color: colorTxtMain
        }

        Text {
            id: txtuplimit
            text: upLimit
            color: colorLimit
            font.pixelSize: 15
            font.family: "Segoe UI"

            anchors.top: parent.top

            anchors.right: parent.right

            anchors.topMargin: 2
            anchors.rightMargin: 10

        }

        Text {
            id: txtdownlimit
            text: upLimit
            color: colorLimit
            font.pixelSize: 15
            font.family: "Segoe UI"

            anchors.top: txtuplimit.bottom

            anchors.right: txtuplimit.right

            anchors.topMargin: 2


        }

    }

}
