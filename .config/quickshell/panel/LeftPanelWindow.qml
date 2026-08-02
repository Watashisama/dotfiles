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
    top: true
    bottom: true
  }
  color: "transparent"
  implicitWidth: 30

  Rectangle {
    anchors.fill: parent
    color: theme.colBg
    

    ColumnLayout {
      anchors.fill: parent
      spacing: spacing.spacing_normal


      Battery {id : battery}
      Item { Layout.fillHeight: true }
    } 
  }
}
