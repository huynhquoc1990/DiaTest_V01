import QtQuick 2.4
import QtQuick.Window 2.4
import QtQuick.Controls 2.4
import "../qml/Component/"
import "../qml/Image/iconsvg"

ApplicationWindow {
    id: window
    width: 480
    height: 320
    visible: true
    color: "#E4E4E4"
    title: "Diatest smart"

    flags: Qt.Window | Qt.FramelessWindowHint

    visibility: Window.FullScreen

    Rectangle {
        id: title
        width: 475
        height: 27
        x:6
        y:2
        radius: 14
        border.color: "blue"
        border.width: 1.5

        Text {
            id: txttile
            width: 168
            height: 24
            text: "Sasi - DiaTest - Smart"
            font.pixelSize: 15
            font.family: "Segoe UI"
            color: "#EC14C1"
            x:20
            y:4

        }

        CusButtonClose {
            id: btnclose
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 10

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    Qt.quit()
                }
            }
        }


    }

    Ketquado {
        titleName: "Kết quả đo"
        colorTitleName: "blue"
        txtMain: "32.125"
        x:10
        y:32

    }

    KetquaSX {
        titleName: "Kết quả sản xuất"
        colorTitleName: "blue"
        txtMain: "125"
        x:10
        y:128
    }
    KetquaSX {
        titleName: "Số lần đo thất bại"
        colorTitleName: "blue"
        colorTxtMain: "red"
        txtMain: "10"
        x:10
        y:225
    }

    CusButton {
        id: btnConnect
        x: 278
        y: 32
        btnIconSource: "Image/iconsvg/tabler-icon-bluetooth.svg"
        txtname: "Conn"

    }

    CusButton {
        id: btnClose
        x: 278
        y: 80
        btnIconSource: "Image/iconsvg/logout.svg"
        txtname: "Close"

    }


    Rectangle {
        id: gach
        width: 15
        height: 2

        x:392
        y:77
        color: "#F60A68"
    }

    ListView {
        id: view
        snapMode: ListView.SnapPosition
        orientation:  ListView.Vertical
        width: 50
        height: 25
        x: 414
        y: 65
        model: ListModel {
            ListElement {name : "COM 1"; color: "red"}
            ListElement {name : "COM 2"; color: "lightblue"}
            ListElement {name : "COM 3"; color: "lightyellow"}
            ListElement {name : "COM 4"; color: "lightgreen"}
        }

       delegate: Rectangle {
           color: "#E4E4E4"
           id: delegate
           width: 56
           height: 25

           Text {
               id: name
               anchors.centerIn: parent
               text: model.name
               font {
                   pixelSize: 15
                   family: "Segoe UI"
                   bold: true
               }
               color: model.color
           }

           Rectangle {
               width: delegate.width
               height: 2

               anchors.left: delegate.left
               anchors.top: name.bottom
               color: "black"
           }

       }
    }

    ListData {
        id: lstData
        x: 278
        y:128


    }
}


