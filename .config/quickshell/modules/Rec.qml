import QtQuick
import QtQuick.Layouts
import '../services/theming/'

Rectangle {
  Theme { id:theme }
  Layout.preferredWidth: 2
  Layout.preferredHeight: 20
  Layout.alignment: Qt.AlignVCenter
  Layout.leftMargin: 8
  Layout.rightMargin: 8
  // color: theme.colRed
}
