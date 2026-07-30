import QtQuick

QtObject {
  id: theme
  // colorscheme
  property color colBg: "#0c0c0c"
  property color colFg: "#f6f6ef"
  property color colSelectedBg: "#2d3f76"
  property color colSelectedFg: "#f6f6ef"
  property color colBlack: "#1a1a1a"
  property color colRed: "#ff5f5f"
  property color colGreen: "#98e024"
  property color colYellow: "#ffef42"
  property color colOrange: "#fd971f"
  property color colBlue: "#2ac3e6"
  property color colPurple: "#9d65ff"
  property color colCyan: "#58d1eb"
  property color colGray: "#c4c5b5"
  property color colMuted: "#7c7e63"
  property color colDeepGray: "#282820"

  // font
  property string fontFamily: "JetBrainsMono Nerd Font Mono"
  property int fontSize: 14

  // systemtray
  property int systray_icon_size: 40
  property int bar_rounding: 10

  // spacing
  property int spacing: 1
}
