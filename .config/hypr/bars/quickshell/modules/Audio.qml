import QtQuick
import Quickshell.Services.Pipewire
import '../core/theme/isekai_remastered/'

Text {
    property var deviceType: {
      const node = Pipewire.defaultAudioSink
      if (!node)
      return "?"

      const name = [
        node.name ?? "",
        node.description ?? "",
        node.nickname ?? ""
      ].join(" ").toLowerCase()

      if (/headphone|headset|earphone|earbud|airpods/.test(name))
        return ["󰋋", "󰟎"]

      if (/speaker|loudspeaker|built-in audio/.test(name))
        return ["󰕾", "󰖁"]

      if (/bluetooth/.test(name))
        return ["󰂯", "󰂲"]

      return ["A", "M"]
    }

    Theme { id: _theme }
    Font { id: _font }

    PwObjectTracker {
        objects: [Pipewire.defaultAudioSink]
    }

    text: {
        const sink = Pipewire.defaultAudioSink

        if (!sink)
            return `${deviceType[1]} --`

        if (sink.audio?.muted)
            return `${deviceType[1]} ${Math.round(sink.audio.volume * 100)}%`

        return `${deviceType[0]} ${Math.round(sink.audio.volume * 100)}%`
    }

    color: {
        const sink = Pipewire.defaultAudioSink

        if (!sink)
            return _theme.colFg

        if (sink.audio?.muted)
            return _theme.colVisual

        return _theme.colGreen
    }

    font {
      family: _font.family
      pixelSize: _font.fontsize
      bold: true
    }
}

