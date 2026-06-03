local colors = require("vim-modules.colorschemes.isekai-remastered.colors")
local M = {
  StatusFile = { fg = colors.green, bold = true },
  StatusNormal = { bg = colors.visual, fg = colors.yellow1, bold = true },
  StatusInsert = { bg = colors.visual, fg = colors.green, bold = true },
  StatusVisual = { bg = colors.visual, fg = colors.pink, bold = true },
  StatusCommand = { bg = colors.visual, fg = colors.orange, bold = true },
  StatusTerminal = { bg = colors.visual, fg = colors.teal, bold = true },
  StatusReplace = { bg = colors.visual, fg = colors.red, bold = true },
  StatusSelect = { bg = colors.visual, fg = colors.yellow, bold = true },
  StatusPending = { bg = colors.visual, fg = colors.purple, bold = true },
  StatusConfirm = { bg = colors.visual, fg = colors.teal, bold = true },
  StatusLine = { fg = colors.bg, bg = colors.bg, bold = true },
  StatusLineText = { fg = colors.fg, bg = colors.bg, bold = true },
  StatusLineText2 = { fg = colors.pink, bg = colors.bg },
  StatusLineError = { fg = colors.crimson, bg = colors.black },
  StatusLineWarn = { fg = colors.yellow, bg = colors.black },
  StatusLineHint = { fg = colors.teal, bg = colors.black }
}

return M
