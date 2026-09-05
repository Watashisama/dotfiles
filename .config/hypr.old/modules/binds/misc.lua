local mainMod = require("modules.binds.mod").super
local alt = require("modules.binds.mod").alt
local shift = require("modules.binds.mod").shift
local programs = require("modules.programs")

hl.bind(alt .. " + " .. shift .. " + Return", hl.dsp.exec_cmd(programs.terminal .. " -e tmux new-session -A"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(programs.terminal .. ' -e ' .. programs.sysmonitor))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd(programs.terminal .. ' -e ' .. programs.network))
hl.bind("F1", hl.dsp.exec_cmd(programs.screenshot_window))
hl.bind("F2", hl.dsp.exec_cmd(programs.screenshot_region))
hl.bind("F3", hl.dsp.exec_cmd(programs.screenshot_output))
hl.bind("F4", hl.dsp.exec_cmd(programs.screenrec_fullscreen))
hl.bind("F5", hl.dsp.exec_cmd(programs.color_picker))
