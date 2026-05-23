local colors = require("experiments.colorschemes.isekai-remastered.colors")
local M = {
  Comment    = { fg = colors.comment, italic = true },
  Constant   = { fg = colors.orange },
  String     = { fg = colors.green },
  Identifier = { fg = colors.cyan },
  Function   = { fg = colors.yellow },
  Statement  = { fg = colors.red },
  Type       = { fg = colors.cyan, bold = true },
  Special    = { fg = colors.yellow },
  Keyword    = { fg = colors.red },
  Variable   = { fg = colors.fg },




  ["@keyword"]                      = { fg = colors.pink, italic = true },
  ["@keyword.conditional"]          = { fg = colors.teal },
  ["@keyword.coroutine"]            = { fg = colors.pink, italic = true },
  ["@keyword.function"]             = { fg = colors.red, italic = true },
  ["@keyword.import"]               = { fg = colors.teal },
  ["@keyword.operator"]             = { fg = colors.cyan },
  ["@keyword.return"]               = { fg = colors.yellow, italic = true, bold = true },
  -- ["@keyword.debug"]                = "Debug",
  -- ["@keyword.directive"]            = "PreProc",
  -- ["@keyword.directive.define"]     = "Define",
  -- ["@keyword.exception"]            = "Exception",
  -- ["@keyword.repeat"]               = "Repeat",
  -- ["@keyword.storage"]              = "StorageClass",

  ["@function"]                     = { fg = colors.yellow },
  ["@function.builtin"]             = { fg = colors.red, bold = true },
  ["@function.call"]                = { fg = colors.yellow },
  ["@function.macro"]               = { fg = colors.orange },
  ["@function.method"]              = { fg = colors.cyan, bold = true },
  ["@function.method.call"]         = { fg = colors.cyan, bold = true },

  ["@variable"]                     = { fg = colors.fg, italic = true },
  ["@variable.builtin"]             = { fg = colors.red, italic = true, bold = true },
  ["@variable.member"]              = { fg = colors.green },
  ["@variable.parameter"]           = { fg = colors.orange },
  ["@variable.parameter.builtin"]   = { fg = colors.fg, italic = true },
  ["@property"]                     = { fg = colors.cyan, italic = true },

  ["@type"]                         = { fg = colors.cyan, bold = true },

  ["@boolean"]                      = { fg = colors.purple },

  ["@punctuation.delimiter"]        = { fg = colors.gray },
  ["@punctuation.bracket"]          = { fg = colors.yellow },
  ["@punctuation.special"]          = { fg = colors.cyan },
  ["@punctuation.special.markdown"] = { fg = colors.cyan },

  ["@string"]                       = { fg = colors.green },
  ["@string.documentation"]         = { fg = colors.yellow },
  ["@string.escape"]                = { fg = colors.purple },
  ["@string.regexp"]                = { fg = colors.cyan },


  ["@string.rust"]               = { fg = colors.teal },
  ["@string.documentation.rust"] = { fg = colors.teal },
  ["@string.escape.rust"]        = { fg = colors.purple },
  ["@string.regexp.rust"]        = { fg = colors.teal },

  ["@operator"]                  = { fg = colors.cyan },


  ["@markup"]                     = {},
  ["@markup.emphasis"]            = { italic = true },
  ["@markup.environment"]         = { fg = colors.orange },
  ["@markup.environment.name"]    = { fg = colors.cyan, bold = true },
  ["@markup.heading"]             = {},
  ["@markup.italic"]              = { italic = true },
  ["@markup.link"]                = { fg = colors.teal },
  -- ["@markup.link.label"]          = "SpecialChar",
  -- ["@markup.link.label.symbol"]   = "Identifier",
  ["@markup.link.url"]            = { underline = true },
  ["@markup.list"]                = { fg = colors.cyan },  -- For special punctutation that does not fall in the categories before.
  ["@markup.list.checked"]        = { fg = colors.green }, -- For brackets and parens.
  ["@markup.list.markdown"]       = { fg = colors.orange, bold = true },
  ["@markup.list.unchecked"]      = { fg = colors.cyan },  -- For brackets and parens.
  ["@markup.math"]                = { fg = colors.yellow },
  ["@markup.raw"]                 = { fg = colors.green },
  ["@markup.raw.markdown_inline"] = { bg = colors.black, fg = colors.cyan },
  ["@markup.strikethrough"]       = { strikethrough = true },
  ["@markup.strong"]              = { bold = true },
  ["@markup.underline"]           = { underline = true },
  -- ["@markup.heading.1"]           = {},
  -- ["@markup.heading.2"]           = {},
  -- ["@markup.heading.3"]           = {},
  -- ["@markup.heading.4"]           = {},
  -- ["@markup.heading.5"]           = {},
  -- ["@markup.heading.6"]           = {},

  -- ["@identifier"]                   = { fg = colors.orange },
}

return M
