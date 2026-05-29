local colors = require("vim-modules.colorschemes.isekai-remastered.colors")
local M = {
  Pmenu = { fg = colors.fg, bg = colors.bg },
  PmenuMatch = { fg = colors.pink, bold = true },
  PmenuSel = { bg = colors.black, bold = true },
  PmenuSbar = { bg = colors.crimson },
  PmenuBorder = { fg = colors.pink },
  PmenuThumb = { bg = colors.purple }
}

return M
