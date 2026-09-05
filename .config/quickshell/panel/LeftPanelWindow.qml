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

  margins {
    top: 0
    bottom: -30
    right: -4
  }

  Rectangle {
    anchors.fill: parent
    color: theme.colBg
    // border.width: 2
    // border.color: theme.colVisual
    radius: 0
    
    

    ColumnLayout {
      anchors.fill: parent
      spacing: spacing.spacing_normal 

      Item {
        implicitHeight: 4
      }

      WorkspaceHyprland {
        id: workspacehyprland
      }
      Item {
        implicitHeight: 4
      }

      VRec {
        id: rec_workspacehyprland
        color: theme.colBlue
      }

      Item {
        Layout.fillHeight: true
      }

      VRec {
        id: rec_end
        color: theme.colBlue
      }
      Item {
        implicitHeight: 30
      }
    } 
  }
}
