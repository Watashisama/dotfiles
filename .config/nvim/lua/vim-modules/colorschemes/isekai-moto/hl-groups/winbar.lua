local colors = require("vim-modules.colorschemes.isekai-moto.colors")
local M = {
  WinBar = { bg = colors.black },
  WinBarSaved = { fg = colors.gray },
  WinBarModified = { fg = colors.orange },
  WinBarRecording = { fg = colors.red, bold = true }
}

return M
