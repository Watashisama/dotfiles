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

      Battery {
        id: battery 
      }

      Rec {
        id: rec_battery
        color: battery.color
      }

      Item {
        Layout.fillWidth: true
      }
      Rec {
        id: rec_audio
        color: audio.color
      }
      Audio { id: audio }

      Rec {
        id: rec_clock
        color: clock.color
      }
      Clock { 
        id: clock 
        color: theme.colPink
      }

    }
  }
}
