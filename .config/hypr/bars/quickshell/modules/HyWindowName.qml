import Quickshell.Hyprland
import QtQuick
import "../core/theme/isekai_moto"

Text {
  Theme { id: _theme }
  Font { id: _font }

  text: { 
    const H = Hyprland.activeToplevel?.title;
    return (H.length > 70 ? H.substring(0, 69) + "…" : H)
  }
  color: _theme.colPink

  font {
    pixelSize: _font.fontsize
    family: _font.family
    bold: true
  }
}
