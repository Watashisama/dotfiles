local colors = require("experiments.colorschemes.isekai-remastered.colors")
local M = {
  StatusFile      = { fg = colors.green, bold = true },

  StatusNormal    = { fg = colors.bg, bg = colors.cyan, bold = true },
  StatusInsert    = { fg = colors.bg, bg = colors.green, bold = true },
  StatusVisual    = { fg = colors.bg, bg = colors.pink, bold = true },
  StatusCommand   = { fg = colors.bg, bg = colors.orange, bold = true },
  StatusTerminal  = { fg = colors.bg, bg = colors.teal, bold = true },
  StatusReplace   = { fg = colors.bg, bg = colors.red, bold = true },
  StatusSelect    = { fg = colors.bg, bg = colors.yellow, bold = true },
  StatusPending   = { fg = colors.bg, bg = colors.purple, bold = true },
  StatusConfirm   = { fg = colors.bg, bg = colors.teal, bold = true },

  StatusLine      = { fg = colors.bg, bg = colors.bg, bold = true },
  StatusLineText  = { fg = colors.fg, bg = colors.bg, bold = true },
  StatusLineText2 = { fg = colors.black, bg = colors.bg },

  StatusLineError = { fg = colors.crimson, bg = colors.black },
  StatusLineWarn  = { fg = colors.yellow, bg = colors.black },
  StatusLineHint  = { fg = colors.teal, bg = colors.black },
}

return M
