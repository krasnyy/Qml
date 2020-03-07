import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.1


Window {
    id:mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

   /* Button{
        id: exitButton
        text:'Button'
        anchors
        {
            verticalCenter:parent.verticalCenter
            horizontalCenter:parent.horizontalCenter
        }

        onClicked: {
            Qt.quit();
        }
    }*/



   /* Row{
        id:buttonsRow
        anchors.centerIn: parent
        spacing: 2
        Button{
            id:button1
            text:'Button1'
            onClicked: {
                mainWindow.title='Button1 tiklandi';
            }
        }
        Button{
            id:button2
            text:'Button2'
            onClicked: {
                mainWindow.title='Button2 tiklandi';
            }
        }
        Button{
            id:button3
            text:'Button3'
            onClicked: {
                mainWindow.title='Button3 tiklandi';
            }
        }
        Button{
            id:button4
            text:'Button4'
            onClicked: {
                Qt.quit();
            }
        }
    }*/


    Column{
        id:buttonsColumn
        anchors.centerIn: parent
        spacing: 2
        Button{
            id:cbutton1
            text:'Button1'
            onClicked: {
                mainWindow.title='Button1 tiklandi';
            }
        }
        Button{
            id:cbutton2
            text:'Button2'
            onClicked: {
                mainWindow.title='Button2 tiklandi';
            }
        }
        Button{
            id:cbutton3
            text:'Button3'
            onClicked: {
                mainWindow.title='Button3 tiklandi';
            }
        }
        Button{
            id:cbutton4
            text:'Button4'
            onClicked: {
                Qt.quit();
            }
        }
    }





}
