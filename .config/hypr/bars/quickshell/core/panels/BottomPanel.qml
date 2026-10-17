import Quickshell; import QtQuick; import QtQuick.Layouts;
import "../../modules"
import "../../core/theme/isekai_remastered"


PanelWindow {
  Theme { id: _theme } Font { id: _font } Spacing { id: _spacing }

  anchors { left: true; right: true; bottom: true; }

  color: "transparent"
  implicitHeight: 24

  Rectangle {
    anchors.fill: parent
    color: _theme.colBg
    radius: 0
    border {
      width: 2
      color: _theme.colVisual
    }

    RowLayout {
      anchors.fill: parent
      spacing: _spacing.spacing_normal

      Item { Layout.preferredWidth: 5 }

      HyWorkspaces {} Seperator { color: _theme.colCyan }

      Item { Layout.fillWidth: true }

      HyWindowName { anchors.centerIn: parent }

      Item { Layout.fillWidth: true }

      Seperator { color: _internet.color } Internet { id: _internet }

      Seperator { color: _audio.color } Audio { id: _audio }

      Mic { id: _mic } Seperator { color: _bat.color }

      Bat { id: _bat; Layout.alignment: Qt.AlignVCenter } Seperator { color: _clock.color }

      Clock { id: _clock }

      Item { Layout.preferredWidth: 5 }
    }
  }
}
