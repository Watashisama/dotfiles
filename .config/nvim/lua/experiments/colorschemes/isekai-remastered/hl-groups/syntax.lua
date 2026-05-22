local colors = require("experiments.colorschemes.isekai-remastered.colors")
local M = {
  Comment       = { fg = colors.comment, italic = true },
  Constant      = { fg = colors.orange },
  String        = { fg = colors.green },
  Identifier    = { fg = colors.orange },
  Function      = { fg = colors.yellow },
  Statement     = { fg = colors.red },
  Type          = { fg = colors.cyan, bold = true },
  Special       = { fg = colors.yellow },
  Keyword       = { fg = colors.red },
  Variable      = { fg = colors.fg },
  ["@keyword"]  = { fg = colors.pink },
  ["@function"] = { fg = colors.yellow },
  ["@variable"] = { fg = colors.fg },
  ["@type"]     = { fg = colors.cyan },
}

return M
