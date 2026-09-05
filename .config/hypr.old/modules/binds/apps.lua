local mainMod = require("modules.binds.mod").super
local alt = require("modules.binds.mod").alt
local programs = require("modules.programs")
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(programs.terminal))
hl.bind(alt .. " + Return", hl.dsp.exec_cmd(programs.terminal .. ' -e ' .. 'tmux'))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(programs.browser))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(programs.terminal .. ' -e ' .. programs.fileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(programs.terminal .. ' -e ' .. programs.music_player))
