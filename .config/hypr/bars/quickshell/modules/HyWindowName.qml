import Quickshell.Hyprland
import QtQuick
import "../core/theme/isekai_remastered"

Text {
  id: _o

  Theme { id: _theme }
  Font { id: _font }

  text: Hyprland.activeToplevel?.title
  color: _theme.colPink

  font {
    pixelSize: _font.fontsize
    family: _font.family
    bold: true
  }
}
