local colors = require("vim-modules.colorschemes.isekai-remastered.colors")
local M = {
  -- Rust
  ["@lsp.type.formatSpecifier.rust"] = { fg = colors.cyan },
  -- Lua
  ["@lsp.type.class.lua"] = {},
  ["@keyword.function.lua"] = { fg = colors.pink, bold = true },
  -- Nu
  ["@operator.nu"] = { fg = colors.cyan, bold = true },
  -- Md
  ["@markup.list.markdown"] = { fg = colors.orange, bold = true },
  -- KDL
  ["@tag.kdl"] = { fg = colors.cyan },
  ["@property.kdl"] = { fg = colors.pink },
  -- Python
  ["@string.documentation.python"] = { fg = colors.teal, bold = true, italic = true }
}

return M
