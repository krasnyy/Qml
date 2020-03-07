import QtQuick 2.12
import QtQuick.Controls 2.1

ApplicationWindow {
    id:mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("ListView")



    Component.onCompleted: {
        var colorss=['orange','green','yellow','cyan','blue'];

        for(var ix=0;ix<10;++ix){
            myListView.model.append({Metin:'hello'+ix,
                                    colors:colorss[ix]

                                    });
        }
     }

    ListView{
        anchors.fill:parent
        id:myListView
        model:ListModel{}
        spacing: 5
       /* delegate:Text {
          //  anchors.fill:parent
            text:Metin
        }*/
        delegate: Rectangle{
            color:colors
            border.color:'white'
            border.width: 5
            width:mainWindow.width
            height: mainWindow.height/5
            Text{
                anchors{
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }
               // color:'white'
                //color:colors

                font.pointSize:20
                text:Metin
            }
        }

        }

}
