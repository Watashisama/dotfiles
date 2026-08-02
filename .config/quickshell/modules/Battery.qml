import QtQuick
import QtQuick.Layouts
import Quickshell.Services.UPower
import "../services/theming"

Item {
  implicitHeight: batteryText.implicitHeight

  Layout.topMargin: 20
  Layout.fillWidth: true

  Text {

    id: batteryText
    rotation: 90
    anchors.centerIn: parent
    Theme {id: theme}
    Font { id: font}

    text: `󰁹 ${Math.round(UPower.displayDevice.percentage * 100)}%`
    color: theme.colGreen

    font {
      family: font.font
      pixelSize: font.fontsize
      bold: true
    }
    Timer {
      interval: 1000
      running: true
      repeat: true
      onTriggered: {
        batteryText.text = `󰁹 ${Math.round(UPower.displayDevice.percentage * 100)}%`
      }
    }
  }
}
