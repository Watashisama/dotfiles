import Quickshell

import "services/widgets"
import "modules"

ShellRoot {
  id: root

  Theme {
    id: theme
  }

  Sysinfo {
    id: sysinfo
  }

  Variants {
    model: Quickshell.screens

    WBar {}
  }
}
