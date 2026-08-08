import QtQuick
import QtQuick.Layouts
import '../services/theming/'

Rectangle {
  Theme { id:theme }
  Layout.preferredWidth: 1
  Layout.preferredHeight: 16
  Layout.alignment: Qt.AlignVCenter
  Layout.leftMargin: 8
  Layout.rightMargin: 8
  // color: theme.colRed
}
