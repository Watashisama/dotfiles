local mainMod = "SUPER"
local programs = require("modules.programs")

hl.bind(mainMod .. " + CTRL + 1", hl.dsp.exec_cmd(programs.screenshot.full))
hl.bind(mainMod .. " + CTRL + 2", hl.dsp.exec_cmd(programs.screenshot.region))
hl.bind(mainMod .. " + CTRL + 3", hl.dsp.exec_cmd(programs.screenshot.active_region))
