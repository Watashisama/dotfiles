local colors = require("vim-modules.colorschemes.isekai-remastered.colors")
local M = {
  Normal = { fg = colors.fg, bg = colors.bg },
  Bold = { bold = true },
  NormalFloat = { fg = colors.fg, bg = colors.bg },
  FloatBorder = { fg = colors.fg, bg = colors.bg },
  CursorLine = { bg = colors.black },
  Visual = { bg = colors.visual },
  Search = { fg = colors.bg, bg = colors.cyan },
  IncSearch = { fg = colors.bg, bg = colors.orange },
  CurSearch = { link = "IncSearch" },
  StatusLineNC = { bg = colors.bg },
  VertSplit = { fg = colors.gray },
  WinSeparator = { fg = colors.gray },
  LineNr = { fg = colors.gray },
  CursorLineNr = { fg = colors.orange, bold = true },
  SignColumn = { bg = colors.bg },
  Folded = { bg = colors.visual },
  DiffAdd = { fg = colors.green },
  DiffChange = { fg = colors.cyan },
  DiffDelete = { fg = colors.crimson },
  EndOfBuffer = { fg = colors.bg }
}

return M
