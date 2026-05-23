local colors = require("experiments.colorschemes.isekai-remastered.colors")
local M = {
  RenderMarkdownCode       = { bg = colors.black },
  RenderMarkdownH1Bg       = { bg = colors.bg, fg = colors.purple, bold = true },
  RenderMarkdownH2Bg       = { bg = colors.bg, fg = colors.cyan, bold = true },
  RenderMarkdownH3Bg       = { bg = colors.bg, fg = colors.yellow, bold = true },
  RenderMarkdownH4Bg       = { bg = colors.bg, fg = colors.teal, bold = true },
  RenderMarkdownH5Bg       = { bg = colors.bg, fg = colors.orange, bold = true },
  RenderMarkdownH6Bg       = { bg = colors.bg, fg = colors.red, bold = true },

  RenderMarkdownBullet     = { fg = colors.orange },
  RenderMarkdownCodeInline = { bg = colors.visual, fg = colors.cyan },
  RenderMarkdownTableHead  = { fg = colors.orange },
  RenderMarkdownTableRow   = { fg = colors.cyan },

  GitSignsAdd              = { fg = colors.green },
  GitSignsChange           = { fg = colors.cyan },
  GitSignsDelete           = { fg = colors.crimson },
}

return M
