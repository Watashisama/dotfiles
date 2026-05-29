local colors = require("experiments.colorschemes.isekai-remastered.colors")
local M = {
  Comment    = { fg = colors.comment, italic = true },
  Constant   = { fg = colors.orange },
  String     = { fg = colors.green },
  Identifier = { fg = colors.cyan },
  Function   = { fg = colors.cyan },
  Statement  = { fg = colors.red },
  Type       = { fg = colors.cyan, bold = true },
  Special    = {},
  Keyword    = { fg = colors.red },
  Variable   = { fg = colors.fg },
  MatchParen = { fg = colors.orange, bg = colors.black, bold = true },




  ["@keyword"]                    = { fg = colors.pink, italic = true },
  ["@keyword.conditional"]        = { link = '@keyword' },
  ["@keyword.coroutine"]          = { fg = colors.pink, italic = true },
  ["@keyword.function"]           = { fg = colors.red, bold = true },
  ["@keyword.import"]             = { fg = colors.teal },
  ["@keyword.operator"]           = { fg = colors.cyan },
  ["@keyword.return"]             = { fg = colors.pink, italic = true, bold = true },
  -- ["@keyword.debug"]                = "Debug",
  -- ["@keyword.directive"]            = "PreProc",
  -- ["@keyword.directive.define"]     = "Define",
  -- ["@keyword.exception"]            = "Exception",
  -- ["@keyword.repeat"]               = "Repeat",
  -- ["@keyword.storage"]              = "StorageClass",

  ["@function"]                   = { fg = colors.blue },
  ["@function.builtin"]           = { fg = colors.cyan, bold = true },
  ["@function.call"]              = { fg = colors.cyan },
  ["@function.macro"]             = { fg = colors.orange },
  ["@function.method"]            = { fg = colors.cyan, bold = true },
  ["@function.method.call"]       = { fg = colors.cyan, bold = true },

  ["@variable"]                   = { fg = colors.fg, italic = true },
  ["@variable.builtin"]           = { fg = colors.red, italic = true, bold = true },
  ["@variable.member"]            = { fg = colors.cyan },
  ["@variable.parameter"]         = { fg = colors.yellow1 },
  ["@variable.parameter.builtin"] = { fg = colors.fg, italic = true },
  ["@property"]                   = { fg = colors.cyan, italic = true },

  ["@constant"]                   = { fg = colors.orange, nocombine = true, bold = true },
  ["@constant.builtin"]           = { fg = colors.pink, bold = true, italic = true },
  ["@constant.macro"]             = { fg = colors.cyan, italic = true },


  ["@type"]                         = { fg = colors.blue, bold = true },
  ["@type.builtin"]                 = { fg = colors.cyan, bold = true },
  ["@type.definition"]              = { fg = colors.fg, bold = true },
  ["@type.qualifier"]               = { fg = colors.crimson, bold = true },

  ["@boolean"]                      = { fg = colors.purple },

  ["@punctuation.delimiter"]        = { fg = colors.cyan },
  ["@punctuation.bracket"]          = { fg = colors.bracket },
  ["@punctuation.special"]          = { fg = colors.cyan, bold = true },
  ["@punctuation.special.markdown"] = { fg = colors.cyan },

  ["@string"]                       = { fg = colors.green },
  ["@string.documentation"]         = { fg = colors.yellow },
  ["@string.escape"]                = { fg = colors.purple },
  ["@string.regexp"]                = { fg = colors.cyan },


  ["@string.rust"]               = { fg = colors.teal },
  ["@string.documentation.rust"] = { fg = colors.teal },
  ["@string.escape.rust"]        = { fg = colors.purple },
  ["@string.regexp.rust"]        = { fg = colors.teal },
  ["@punctuation.delimiter.nu"]  = { fg = colors.cyan, bold = true },

  ["@operator"]                  = { fg = colors.cyan },
  ["@operator.nu"]               = { fg = colors.cyan, bold = true },


  ["@markup"]                           = {},
  ["@markup.emphasis"]                  = { italic = true },
  ["@markup.environment"]               = { fg = colors.orange },
  ["@markup.environment.name"]          = { fg = colors.cyan, bold = true },
  ["@markup.heading"]                   = {},
  ["@markup.italic"]                    = { italic = true },
  ["@markup.link"]                      = { fg = colors.teal },
  ["@markup.link.url"]                  = { underline = true },
  ["@markup.list"]                      = { fg = colors.cyan },  -- For special punctutation that does not fall in the categories before.
  ["@markup.list.checked"]              = { fg = colors.green }, -- For brackets and parens.
  ["@markup.list.markdown"]             = { fg = colors.orange, bold = true },
  ["@markup.list.unchecked"]            = { fg = colors.cyan },  -- For brackets and parens.
  ["@markup.math"]                      = { fg = colors.yellow },
  ["@markup.raw"]                       = { fg = colors.green },
  ["@markup.raw.markdown_inline"]       = { bg = colors.black, fg = colors.cyan },
  ["@markup.strikethrough"]             = { strikethrough = true },
  ["@markup.strong"]                    = { bold = true },
  ["@markup.underline"]                 = { underline = true },
  ["@markup.heading.1"]                 = { bg = colors.bg, fg = colors.purple, bold = true },
  ["@markup.heading.2"]                 = { bg = colors.bg, fg = colors.cyan, bold = true },
  ["@markup.heading.3"]                 = { bg = colors.bg, fg = colors.yellow, bold = true },
  ["@markup.heading.4"]                 = { bg = colors.bg, fg = colors.teal, bold = true },
  ["@markup.heading.5"]                 = { bg = colors.bg, fg = colors.orange, bold = true },
  ["@markup.heading.6"]                 = { bg = colors.bg, fg = colors.red, bold = true },
  -- ["@markup.link.label"]          = "SpecialChar",
  -- ["@markup.link.label.symbol"]   = "Identifier",

  ["@attribute"]                        = { fg = colors.cyan, bold = true, italic = true },
  ["@lsp.type.decorator"]               = { fg = colors.cyan, bold = true },
  ["@lsp.type.deriveHelper"]            = { fg = colors.cyan, bold = true },
  ["@tag.attribute"]                    = { fg = colors.cyan, italic = true },
  ["@lsp.type.variable"]                = {},
  ["@lsp.mod.declaration"]              = {},
  ["@lsp.typemod.variable.declaration"] = {},
  ["@lsp"]                              = {},
}

return M
