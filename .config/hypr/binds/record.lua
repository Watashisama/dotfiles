local mainMod = "SUPER"
local programs = require("modules.programs")

hl.bind(mainMod .. " + CTRL + 4", hl.dsp.exec_cmd(programs.record.full))
hl.bind(mainMod .. " + CTRL + 5", hl.dsp.exec_cmd(programs.record.region))
hl.bind(mainMod .. " + CTRL + 6", hl.dsp.exec_cmd(programs.record.active_region))
