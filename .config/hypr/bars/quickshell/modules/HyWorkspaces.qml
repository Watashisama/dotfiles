import QtQuick
import Quickshell.Hyprland
import "../core/theme/isekai_remastered"
pragma ComponentBehavior: Bound

Row {
  id: root
  Theme { id: _theme }
  Font { id: _font }

  // spacing: 6

  property color activeColor: _theme.colOrange
  property color inactiveColor: _theme.colBlack
  property color activeTextColor: _theme.colBlack
  property color inactiveTextColor: _theme.colCyan
  property int workspaceCount: {
    const workspaces = Hyprland.workspaces.values
    let maxId = 0

    for (const ws of workspaces) {
      if (ws.id > maxId)
      maxId = ws.id
    }

    return Math.max(maxId, Hyprland.focusedWorkspace?.id ?? 1)
  }

  Repeater {
    model: {
      Hyprland.refreshWorkspaces()
      const workspaces = Hyprland.workspaces.values

      const extraWorkspaces = workspaces
      .filter(ws => ws.id > 10 && ws.lastIpcObject?.windows > 0)
      .map(ws => ws.id)
      .sort((a, b) => a - b)

      const workspaceIds = [
        ...Array.from({ length: 10 }, (_, i) => i + 1),
        ...extraWorkspaces,
      ]

      const currentId = Hyprland.focusedWorkspace?.id

      if (currentId != null && !workspaceIds.includes(currentId))
      workspaceIds.push(currentId)

      return workspaceIds.sort((a, b) => a - b)
    }

    delegate: Rectangle {
      id: _h

      required property int index
      required property var modelData
      readonly property int workspaceId: modelData
      readonly property bool isActive: Hyprland.focusedWorkspace?.id === workspaceId

      width: 22
      height: 18
      radius: 0

      color: isActive
      ? root.activeColor
      : root.inactiveColor

      Text {
        anchors.centerIn: parent

        text: _h.workspaceId

        color: _h.isActive
        ? root.activeTextColor
        : root.inactiveTextColor

        font {
          family: _font.family
          pixelSize: _font.fontsize
          bold: true
        }
      }

      MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor

        onClicked: {
          Hyprland.dispatch(
            `hl.dsp.focus({workspace = ${_h.workspaceId}})`
          )
        }
      }
    }
  }
}
