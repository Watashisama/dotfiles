import QtQuick
import Quickshell.Services.Pipewire
import '../core/theme/isekai_remastered/'

Text {
    id: audio

    Theme { id: _theme }
    Font { id: _font }

    PwObjectTracker {
        objects: [Pipewire.defaultAudioSink]
    }

    text: {
        const sink = Pipewire.defaultAudioSink

        if (!sink)
            return "󰖁 --"

        if (sink.audio?.muted)
            return `󰖁 ${Math.round(sink.audio.volume * 100)}%`

        return `󰕾 ${Math.round(sink.audio.volume * 100)}%`
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

