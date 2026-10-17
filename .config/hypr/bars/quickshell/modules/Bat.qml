import QtQuick
import Quickshell.Services.UPower
import "../core/theme/isekai_remastered/"

Text {
  Theme { id: _theme }
  Font { id: _font }

  text: {
    switch (UPower.displayDevice.state) {
      case UPowerDeviceState.Charging:
      case UPowerDeviceState.PendingCharge:
      return `󰂄 ${Math.round(UPower.displayDevice.percentage * 100)}%`

      case UPowerDeviceState.Discharging:
      case UPowerDeviceState.PendingDischarge:
      return `󰁹 ${Math.round(UPower.displayDevice.percentage * 100)}%`

      default:
      return `󰁹 ${Math.round(UPower.displayDevice.percentage * 100)}%`
    }

  }
  color: {
    switch (UPower.displayDevice.state) {
      case UPowerDeviceState.Charging:
      case UPowerDeviceState.PendingCharge:
      return _theme.colGreen

      case UPowerDeviceState.Discharging:
      case UPowerDeviceState.PendingDischarge:
      return _theme.colBlue

      default:
      return _theme.colBlue
    }
  }

  font {
    family: _font.family
    pixelSize: _font.fontsize
    bold: true
  }
}
