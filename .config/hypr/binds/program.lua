local mainMod = "SUPER"
local programs = require("modules.programs")

hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(programs.fileManager))
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(programs.terminal .. " -e zellij"))
hl.bind(
  mainMod .. " + SHIFT +Return",
  hl.dsp.exec_cmd(programs.terminal .. " -e ~/.config/hypr/scripts/helper-zellij-attach.nu")
)
hl.bind(mainMod .. " + CTRL + Return", hl.dsp.exec_cmd(programs.terminal))
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd(programs.menu))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(programs.browser))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(programs.sysmonitor))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(programs.music))
