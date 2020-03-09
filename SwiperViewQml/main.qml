import QtQuick 2.12
import QtQuick.Controls 2.1

ApplicationWindow
{
    visible:true
    width:640
    height:480
    title:'SwipeView'

    SwipeView{
        id: view
        anchors.fill:parent
        currentIndex: 0
        Item{
            id:firstElement
            Rectangle{
                anchors.fill: parent
                color:'red'
            }
        }
        Item{
            id:secondElement
            Rectangle{
                anchors.fill: parent
                color:'blue'
            }
        }
        Item{
            id:thirthElement
            Rectangle{
                anchors.fill: parent
                color:'orange'
            }
        }

    }


    PageIndicator{
        id:indicator
        count:view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter


    }

}
