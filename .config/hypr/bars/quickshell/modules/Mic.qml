import QtQuick
import Quickshell.Services.Pipewire
import "../core/theme/isekai_remastered"

Text {
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
}
