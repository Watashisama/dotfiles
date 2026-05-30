import Quickshell
import Quickshell.Hyprland

import QtQuick
import QtQuick.Layouts


PanelWindow {
  property var modelData
  screen: modelData

  anchors {
    // top: true
    left: true
    right: true
    bottom: true
  }


  implicitHeight: 35
  color: "transparent" 
  HyprlandWindow.opacity: 1

  margins {
    top: 4
    bottom: 0
    left: 5
    right: 5
  }

  Rectangle {
    anchors.fill: parent
    color: theme.colBg
    border.width: 2
    border.color: theme.colDeepGray
    radius: 7

    // WSystemtray {}


    RowLayout {
      anchors.fill: parent
      spacing: theme.spacing

      Repeater {
        model: 10

        Rectangle {
          Layout.preferredWidth: 20
          Layout.preferredHeight: parent.height
          color: "transparent"
          radius: 0

          property var workspace: Hyprland.workspaces.values.find(ws => ws.id === index + 1) ?? null
          property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
          property bool hasWindows: workspace !== null

          Text {
            text: index + 1
            color: parent.isActive ? theme.colYellow : (parent.hasWindows ? theme.colBlue : theme.colMuted)
            font {
              pixelSize: theme.fontSize
              family: theme.fontFamily
              bold: true
            }
            anchors.centerIn: parent
          }

          MouseArea {
            anchors.fill: parent
            onClicked: Hyprland.dispatch("workspace " + (index + 1))
          }
        }
      }

      Rectangle {
        Layout.preferredWidth: 1
        Layout.preferredHeight: 16
        Layout.alignment: Qt.AlignVCenter
        Layout.leftMargin: 8
        Layout.rightMargin: 8
        color: theme.colMuted
      }


      // WSystemMonitor {}



      // Rectangle {
      //   Layout.preferredWidth: 1
      //   Layout.preferredHeight: 16
      //   Layout.alignment: Qt.AlignVCenter
      //   Layout.leftMargin: 0
      //   Layout.rightMargin: 8
      //   color: theme.colMuted
      // }

      // Text {
      //   text: "󰖨 "+ sysinfo.brightness + "%"
      //   color: theme.colBlue
      //   font {
      //     pixelSize: theme.fontSize
      //     family: theme.fontFamily
      //     bold: true
      //   }
      //   Layout.rightMargin: 8
      // }
      //
      //
      // Rectangle {
      //   Layout.preferredWidth: 1
      //   Layout.preferredHeight: 16
      //   Layout.alignment: Qt.AlignVCenter
      //   Layout.leftMargin: 0
      //   Layout.rightMargin: 8
      //   color: theme.colMuted
      // }

      // Text {
      //   text: (sysinfo.muted ? "󰕾 " : "󰖁 ")+ sysinfo.volume + "%"
      //   color: sysinfo.muted ? theme.colPurple : theme.colMuted
      //   font {
      //     pixelSize: theme.fontSize
      //     family: theme.fontFamily
      //     bold: true
      //   }
      //   Layout.rightMargin: 8
      // }
      //
      // Text {
      //   text: (sysinfo.mic ? "󰍬" : "󰍭")
      //   color: sysinfo.mic ? theme.colOrange : theme.colMuted
      //   font {
      //     pixelSize: theme.fontSize
      //     family: theme.fontFamily
      //     bold: true
      //   }
      //   Layout.rightMargin: 8
      // }

      Item {
        Layout.fillWidth: true
      }

      // WMedia {} //

      Item {
        Layout.fillWidth: true
      }

      // Text {
      //   text: " " + sysinfo.percent + "%" + (sysinfo.charging ? " " : "")
      //   color: theme.colGreen
      //   font {
      //     pixelSize: theme.fontSize
      //     family: theme.fontFamily
      //     bold: true
      //   }
      //   Layout.rightMargin: 8
      // }

      Rectangle {
        Layout.preferredWidth: 1
        Layout.preferredHeight: 16
        Layout.alignment: Qt.AlignVCenter
        Layout.leftMargin: 0
        Layout.rightMargin: 8
        color: theme.colMuted
      }

      Text {
        id: clockText
        text: " " + Qt.formatDateTime(new Date(), "ddd, MMM dd - HH:mm")
        color: theme.colRed
        font {
          pixelSize: theme.fontSize
          family: theme.fontFamily
          bold: true
        }
        Layout.rightMargin: 8

        Timer {
          interval: 1000
          running: true
          repeat: true
          onTriggered: clockText.text = " " +  Qt.formatDateTime(new Date(), "ddd, MMM dd - HH:mm")
        }
      }

    }
  }
}

