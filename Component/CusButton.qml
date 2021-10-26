import QtQuick 2.4
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0
import "../Image/iconsvg"

Button {
    id: btnbutton
    property url btnIconSource: "../Image/iconsvg/tabler-icon-trending-up.svg"
    property string txtname: ""
    property color colortxt: "#EC14C1"
    property color btncolorClick: "#ffffff"
    property color btnColorMouseOver: "#FF2f23"
    property color btnColorDefault: "#EC14C1"

    QtObject {
        id: internal
        property var dynamicColor: if(btnbutton.down){
                                  btnbutton.down ? btncolorClick: btnColorDefault
                              }else{
                                  btnbutton.hovered ? btnColorMouseOver: btnColorDefault
                              }

    }

    implicitHeight: 41
    implicitWidth: 112

    background: Rectangle {
        id: gbBtn
//        color: "#FFFFFF"
        border.width: 1.5
        radius: 8
        border.color: "blue"

        Text {
            id: name
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin:20
            font.pixelSize: 20
            text: txtname
            color: colortxt
        }


        Image {
            id: iconImage
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 5

            height: 25
            width: 25
            fillMode: Image.PreserveAspectFit
        }

        ColorOverlay {
            anchors.fill: iconImage
            source: iconImage
            color: internal.dynamicColor
            antialiasing: false
        }
    }
}


