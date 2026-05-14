local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local programs = require("modules.programs")
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(programs.terminal))
hl.bind("ALT + Return", hl.dsp.exec_cmd(programs.terminal .. ' -e ' .. 'tmux'))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(programs.browser))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(programs.terminal .. ' -e ' .. programs.fileManager))
