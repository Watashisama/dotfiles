import QtQuick
import Quickshell.Networking
import "../core/theme/isekai_remastered"

Text {
  Font { id:_font }
  Theme { id: _theme }

  text: {
    const devices = [...Networking.devices.values]

    for (const device of devices) {
        if (!device.connected)
        continue

        if (device.type === DeviceType.Wired)
        return " Connected"

      const network = [...device.networks.values]
      .find(network => network.connected)

      if (network)
      return ` ${network.name}`
    }

    return " Disconnected"
  }

  color: {
    const devices = [...Networking.devices.values]
    for (const device of devices) {
      const network = [...device.networks.values]
      .find(network => network.connected)

      if (network)
      return _theme.colCyan
    }
    return _theme.colRed
  }
  font {
    family: _font.family
    pixelSize: _font.fontsize
    bold: true
  }
}
