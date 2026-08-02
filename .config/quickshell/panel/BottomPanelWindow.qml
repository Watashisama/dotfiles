import Quickshell
import QtQuick
import QtQuick.Layouts
import "../services/theming"
import "../modules"

PanelWindow {

  Theme { id: theme }
  Font { id: font }
  Spacing { id: spacing }

  anchors {
    left: true
    bottom: true
    right: true
  }

  color: "transparent"
  implicitHeight: 30

  Rectangle {
    anchors.fill: parent
    color: theme.colBg

    RowLayout {
      anchors.fill: parent
      spacing: spacing.spacing_normal

      Item {
        Layout.fillWidth: true
      }

      Rectangle {
        Layout.preferredWidth: 1
        Layout.preferredHeight: 16
        Layout.alignment: Qt.AlignVCenter
        Layout.leftMargin: 8
        Layout.rightMargin: 8
        color: theme.colRed
      }
      Clock { id: clock }

    }
  }
}
