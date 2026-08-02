import QtQuick
import QtQuick.Layouts
import "../services/theming"

Text {
  id: clockText
  text: " " + Qt.formatDateTime(new Date(),"ddd, MMM dd - HH:mm" )
  color: theme.colRed
  font {
    pixelSize: font.fontsize
    family: font.font
    bold: true
  }
  Layout.rightMargin: 8
  Theme { id: theme }
  Font { id: font }

  Timer {
    interval: 1000
    running: true
    repeat: true
    onTriggered: clockText.text = " " +  Qt.formatDateTime(new Date(), "ddd, MMM dd - HH:mm")
  }
}
