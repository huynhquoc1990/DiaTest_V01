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


    QtObject {

    }


    Rectangle {
        id:ketquado

        width: 200
        height: 187

        border.color: "blue"
        border.width: 2
        radius: 8

    }

}
