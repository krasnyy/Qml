import QtQuick 2.6
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

ApplicationWindow
{
    visible:true
    width:640
    height:480
    title:'TabBar'
    footer:TabBar
    {
        id:menuBar
        TabButton{
            text:'first'
        }
        TabButton{
            text:'second'
        }
        TabButton{
            text:'thirth'
        }
    }
    StackLayout
    {
        anchors.fill:parent
        currentIndex: menuBar.currentIndex

        Item{
            id:firstTab
            Rectangle{
                color:'red'
                anchors.fill:parent
            }
        }
        Item{
            id:secondTab
            Rectangle{
                color:'blue'
                anchors.fill: parent
            }
        }

        Item{
            id:thirthTab
            Rectangle{
                color:'green'
                anchors.fill: parent
            }
        }
    }
}
