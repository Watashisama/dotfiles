vim.lsp.log.set_level(vim.log.levels.OFF)
vim.lsp.inlay_hint.enable(true)

require("vim-modules.lsps.python")
require("vim-modules.lsps.lua")
require("vim-modules.lsps.nu")
require("vim-modules.lsps.rust")
