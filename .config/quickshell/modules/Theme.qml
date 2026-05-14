import QtQuick

QtObject {
  id: theme
  // colorscheme
  property color colBg: "#222436"
  property color colFg: "#c8d3f5"
  property color colSelectedBg: "#2d3f76"
  property color colSelectedFg: "#c8d3f5"
  property color colBlack: "#1b1d2b"
  property color colRed: "#ff757f"
  property color colGreen: "#c3e88d"
  property color colYellow: "#ffc777"
  property color colOrange: "#ff966c"
  property color colBlue: "#82aaff"
  property color colPurple: "#c099ff"
  property color colCyan: "#86e1fc"
  property color colGray: "#828bb8"
  property color colMuted: "#414a54"
  property color colDeepGray: "#444a73"

  // font
  property string fontFamily: "JetBrainsMono Nerd Font Mono"
  property int fontSize: 14

  // systemtray
  property int systray_icon_size: 40
  property int bar_rounding: 10

  // spacing
  property int spacing: 1
}
