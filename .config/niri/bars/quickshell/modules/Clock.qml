import QtQuick; import QtQuick.Layouts
import "../core/theme/isekai_moto"

Item {
  Layout.alignment: Qt.AlignHCenter
  Layout.preferredHeight: clockText.implicitWidth
  property alias color: clockText.color

  Text {
    id: clockText

    Theme { id: _theme }
    Font { id: _font }

    text: " " + Qt.formatDateTime(new Date(),"ddd, MMM dd - HH:mm" )
    color: _theme.colPink
    font {
      pixelSize: _font.fontsize
      family: _font.family
      bold: true
    }

    Timer {
      interval: 1000
      running: true
      repeat: true
      onTriggered: clockText.text = " " + Qt.formatDateTime(new Date(), "ddd, MMM dd - HH:mm")
    }
    rotation: 270
    anchors.centerIn: parent
  }
}
