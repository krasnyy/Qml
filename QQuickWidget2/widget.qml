import QtQuick 2.0

Item {
    width:600
    height: 600
    Component.onCompleted: {
        myListView.model.append({myColor:'red',myText:'Merhaba'});
         myListView.model.append({myColor:'blue',myText:'Merhaba2'});
         myListView.model.append({myColor:'green',myText:'Merhaba3'});
         myListView.model.append({myColor:'red',myText:'Merhaba4'});
         myListView.model.append({myColor:'green',myText:'Merhaba5'});
         myListView.model.append({myColor:'blue',myText:'Merhaba6'});
    }


    ListView{
        id:myListView
        anchors.fill:parent
        model:ListModel{}
        delegate: Rectangle{
            width:parent.width
            height: 50
            color:myColor
            Text{
                anchors.centerIn: parent
                text:myText
                color:'white'
                font.pointSize: 20
            }
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    mainWidget.printTextColor(myText);
                }
            }
        }
    }
}
