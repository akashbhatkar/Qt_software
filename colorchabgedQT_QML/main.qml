import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
import QtQuick.Controls 2.5
import QtQml 2.12


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property color firstcolor: "red"
    property color secondcolor: "lightgreen"

    Connections{
        target: testing
        onNotice:{
            secondb.color=data
        }
    }

    Column{
        anchors.centerIn: parent

        spacing:20

        Rectangle
        {
            id: firstb
            height:50
            width:100
            color: firstcolor
            radius:5

            MouseArea{
                id:mouse
                anchors.fill: parent
                onClicked: {
                    testing.startTimer()

                }
            }



        }
        Rectangle
        {
            id: secondb
            height:50
            width:100
            color: firstcolor
            radius:5

        }
        Rectangle
        {
            id: thirdb
            height:50
            width:100
            color: firstcolor
            radius:5
        }
        Rectangle
        {
            id: fourthb
            height:50
            width:100
            color: firstcolor
            radius:5

        }
    }

}
