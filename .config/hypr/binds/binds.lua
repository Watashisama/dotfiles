require("binds.window")
require("binds.program")
require("binds.workspace")
require("binds.media")
require("binds.light")

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

hl.bind(
  mainMod .. " + M",
  hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)
