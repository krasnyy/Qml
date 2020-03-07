import QtQuick 2.12
import QtQuick.Controls 2.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Component.onCompleted:{
        var colors=['orange','red','green','cyan','brown'];
        var ix ;
        var count=0;
        for (var jx=0;jx<20;++jx){
        for(ix=0;ix<colors.length;++ix){
            gridView.model.append({myColor:colors[ix],
                                  myText:count});
            ++count;
        }
        }



    }

    GridView{
        id:gridView
        anchors{
            top:parent.top
            bottom:parent.bottom
            left:parent.left
            right:parent.right
            leftMargin: 20
            topMargin: 20
        }
        cellWidth: width/3
        cellHeight: height/3

        model:ListModel{}

        delegate:Rectangle{
            width:gridView.cellWidth * 0.9
            height: gridView.cellHeight * 0.9
            color:myColor
            Text{
                text:myText
                font.pointSize: 20
            }
        }



    }

}
