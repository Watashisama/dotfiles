import QtQuick; import QtQuick.Layouts
import Quickshell.Services.UPower
import "../core/theme/isekai_moto/"

Item {
  Layout.alignment: Qt.AlignHCenter
  Layout.preferredHeight: __intern__bat.implicitWidth
  property alias color: __intern__bat.color

  Text {
    id: __intern__bat
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
      if (Math.round(UPower.displayDevice.percentage * 100) <= 20) {
        if (UPower.displayDevice.state === UPowerDeviceState.Charging) {
          return _theme.colGreen
        }
        return _theme.colRed
      }
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
    rotation: 270
    anchors.centerIn: parent
  }
}
