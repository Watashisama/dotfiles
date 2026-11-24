import QtQuick; import QtQuick.Layouts
import Quickshell.Services.Pipewire
import "../core/theme/isekai_moto"

Item {
  Layout.alignment: Qt.AlignHCenter
  Layout.preferredHeight: __intern__mic.implicitWidth
  property alias color: __intern__mic.color

  Text {
    id: __intern__mic
    Theme { id: _theme }
    Font { id: _font }

    PwObjectTracker {
      objects: [Pipewire.defaultAudioSource]
    }

    text: {
      const source = Pipewire.defaultAudioSource

      if (!source)
      return "--"

      if (source.audio?.muted)
      return " 󰍭"

      return " 󰍬"
    }

    color: {
      const source = Pipewire.defaultAudioSource
      if (!source)
      return _theme.colFg

      if (source.audio?.muted)
      return _theme.colVisual

      return _theme.colGreen
    }

    font {
      family: _font.family
      pixelSize: _font.fontsize
      bold: true
    }
    rotation: 270
    anchors.centerIn: parent
  }
}
