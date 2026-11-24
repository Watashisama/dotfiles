import Quickshell; import QtQuick; import QtQuick.Layouts;
import "../../modules"; import "../../core/theme/isekai_moto"

PanelWindow {
  Theme { id: _theme } Font { id: _font } Spacing { id: _spacing }
  anchors { left: true; bottom: true; top: true }

  id: _root
  color: "transparent"
  implicitWidth: 24

  Rectangle {
    id: _rectangle
    anchors.fill: parent
    color: _theme.colBg

    radius: 0

    border {
      width: 2
      color: _theme.colVisual
    }

    ColumnLayout {
      anchors.fill: parent
      spacing: _spacing.spacing_normal

      Item { Layout.preferredHeight: 5 } Mic { id: _mic }

      Audio { id: _audio } Seperator { color: _audio.color } 

      Bat { id: _bat } Seperator { color: _bat.color }

      Item { Layout.fillHeight: true }

      Seperator { color: _internet.color } Internet { id: _internet }


      Seperator { color: _clock.color }

      Clock { id: _clock } Item { Layout.preferredHeight: 5 }
    }
  }
}
