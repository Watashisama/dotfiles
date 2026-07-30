import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.SystemTray

Rectangle {
  id: root
  color: theme.colBg
  radius: theme.bar_rounding
  anchors.fill: parent

  ColumnLayout {
    anchors.fill: parent

    Rectangle {
      id: systray_background

      Layout.fillWidth: true
      Layout.fillHeight: true

      RowLayout {
        id: systray

        Layout.fillWidth: true
        Layout.fillHeight: true

        Repeater {
          model: SystemTray.items

          delegate: Rectangle {
            width: theme.systray_icon_size
            height: theme.systray_icon_size

            color: "transparent"

            Image {
              source: modelData.icon

              anchors.fill: parent
            }
          }
        }
      }
    }
  }
  
  Item {
    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
  }
}
