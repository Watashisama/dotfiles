local colors = require("vim-modules.colorschemes.isekai-remastered.colors")
local M = {
  WinBar = { bg = colors.black },
  WinBarSaved = { fg = colors.gray },
  WinBarModified = { fg = colors.orange },
  WinBarRecording = { fg = colors.red, bold = true }
}

return M
