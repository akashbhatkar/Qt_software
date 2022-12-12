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
//    property color firstcolor: "red"
//    property color secondcolor: "yellow"

    Timer{
        id:time

        interval: 1000

        onTriggered:{

          secondb.text="hey"
            time2.start()

        }

    }
    Timer{
        id:time2

        interval: 2000

        onTriggered:{

          thirdb.text="hey"
            time3.start()

        }

    }
    Timer{
        id:time3

        interval: 3000

        onTriggered:{

          fourthb.text="hey"

        }

    }


    Column{
        anchors.centerIn: parent

        spacing:20

        Button
        {
            id: firstb
            height:50
            width:100
            onClicked: {

               time.start()
        }

        }
        Button
        {
            id: secondb
            height:50
            width:100


        }
        Button
        {
            id: thirdb
            height:50
            width:100
         }
        Button
        {
            id: fourthb
            height:50
            width:100

        }
    }

}
