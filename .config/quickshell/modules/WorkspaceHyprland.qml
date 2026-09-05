import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import "../services/theming/"
pragma ComponentBehavior: Bound

ColumnLayout {
  Theme { id: theme }
  Font { id: font }
  Layout.alignment: Qt.AlignHCenter

  Item {
    implicitHeight: rec.height
    implicitWidth: rec.width

    Rectangle {
      id: rec
      color: theme.colVisual
      implicitHeight: column.height 
      implicitWidth: column.width
      radius: 3

      ColumnLayout {
        spacing: 0
        id: column


        Repeater {
          model: Hyprland.workspaces

          delegate: Rectangle {
            id: delegateItem
            required property var modelData

            width: 20
            height: 20
            radius: 3
            color: modelData.active ? theme.colOrange : "transparent" 

            Text {
              anchors.centerIn: parent
              text: delegateItem.modelData.name
              color: delegateItem.modelData.active ? theme.colBlack : theme.colBlue

              font {
                pixelSize: font.fontsize
                family: font.font
                bold: true
              }
            }

            MouseArea {
              anchors.fill: parent
              onClicked: delegateItem.modelData.activate()
            }
          }
        }
      }
    }
  }
}
