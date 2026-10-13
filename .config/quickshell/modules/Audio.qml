import QtQuick
import Quickshell.Services.Pipewire
import '../services/theming/'

Text {
    id: audio
    Theme { id: theme }
    Font { id: font_ }

    PwObjectTracker {
        objects: [Pipewire.defaultAudioSink]
    }

    text: {
        const sink = Pipewire.defaultAudioSink

        if (!sink)
            return "󰖁 --"

        if (sink.audio?.muted)
            return "󰖁"

        return `󰕾 ${Math.round(sink.audio.volume * 100)}%`
    }

    color: {
        const sink = Pipewire.defaultAudioSink

        if (!sink)
            return theme.colFg

        if (sink.audio?.muted)
            return theme.colRed

        return theme.colGreen
    }

    font {
      family: font_.font
      pixelSize: font_.fontsize
      bold: true
    }
}
