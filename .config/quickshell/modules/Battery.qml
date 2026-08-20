import QtQuick
import QtQuick.Layouts
import Quickshell.Services.UPower
import "../services/theming"

  Text {

    id: batteryText
    Theme {id: theme}
    Font { id: font}

    text: {

        switch (UPower.displayDevice.state) {
        case UPowerDeviceState.Charging:
        case UPowerDeviceState.PendingCharge:
            return `󰂄 ${Math.round(UPower.displayDevice.percentage * 100)}%`

        case UPowerDeviceState.Discharging:
        case UPowerDeviceState.PendingDischarge:
            return `󰁹 ${Math.round(UPower.displayDevice.percentage * 100)}%`

        default:
            return "100"
        }
      
    }
    color: {
        switch (UPower.displayDevice.state) {
        case UPowerDeviceState.Charging:
        case UPowerDeviceState.PendingCharge:
            return theme.colGreen

        case UPowerDeviceState.Discharging:
        case UPowerDeviceState.PendingDischarge:
            return theme.colBlue
        }
    }
    Layout.leftMargin: 8

    font {
      family: font.font
      pixelSize: font.fontsize
      bold: true
    }
    // Timer {
    //   interval: 1000
    //   running: true
    //   repeat: true
    //   onTriggered: {
    //     batteryText.text = `󰁹 ${Math.round(UPower.displayDevice.percentage * 100)}%`
    //   }
    // }
  }

