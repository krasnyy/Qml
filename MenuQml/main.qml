import QtQuick 2.12
import QtQuick.Controls 2.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button{
        id:openMenuButton
        text:'Open Menu'
        onClicked: {
            menu.open();
        }
    }

    Label{
        id:label
        anchors.centerIn: parent
        text:'menüden bir seçenek belirleyin'
        font.pointSize: 20
    }


    Menu{
        id:menu
        y:openMenuButton.height
        MenuItem{
            text:'Secenek 1'
            onClicked: {
                label.text='Secenek 1'
            }
        }
        MenuItem{
            text:'Secenek 2'
            onClicked: {
                label.text='Secenek 2'
            }
        }
        MenuItem{
            text:'Secenek 3'
            onClicked: {
                label.text='Secenek 3'
            }
        }
    }
}
