import QtQuick 2.12
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    header:Rectangle{
        width:parent.width
        height: 50

        color:'green'
        Label{
            anchors.centerIn: parent
            width: parent.width
            height: parent.height / 2
            color:'white'
            id:mytitle
            font.pointSize: 20
        }
    }

    ColumnLayout {
        anchors{
            left:parent.left
            right:parent.right
            bottom:header.bottom
            top:header.bottom
        }

        anchors.fill:parent
        spacing:5
        Repeater{
            model:5
            RowLayout{
                Layout.fillHeight: true
                width: parent.width
                height: 10
                spacing:5
                Repeater{
                    model:ListModel{
                        ListElement{
                            mytext:'butoon1'
                        }
                        ListElement{
                            mytext:'butoon2'
                        }
                        ListElement{
                            mytext:'butoon3'
                        }
                        ListElement{
                            mytext:'butoon4'
                        }
                        ListElement{
                            mytext:'butoon5'
                        }
                    }

                    Button{
                        Layout.fillWidth:true
                        text:mytext
                        onClicked: {
                            mytitle.text=text;
                        }

                    }
                }
            }
        }
    }
}
