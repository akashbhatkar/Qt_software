import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
import QtQml 2.12
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Timer{
        id: t1
        onTriggered: {
            console.log("hello world")
        }
    }

    Button{
        height: 50
        width: 100
        text: qsTr("Button")
        onClicked: t1.triggered()

    }

}
