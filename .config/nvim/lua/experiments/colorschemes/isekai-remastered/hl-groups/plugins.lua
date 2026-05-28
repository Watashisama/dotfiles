local colors = require("experiments.colorschemes.isekai-remastered.colors")
local M = {
  MiniIndentscopeSymbol    = { fg = colors.pink },
  MiniIndentscopeSymbolOff = { fg = colors.purple },

  RenderMarkdownCode       = { bg = colors.black },
  RenderMarkdownH1Bg       = { bg = colors.bg, fg = colors.purple, bold = true },
  RenderMarkdownH2Bg       = { bg = colors.bg, fg = colors.cyan, bold = true },
  RenderMarkdownH3Bg       = { bg = colors.bg, fg = colors.yellow, bold = true },
  RenderMarkdownH4Bg       = { bg = colors.bg, fg = colors.teal, bold = true },
  RenderMarkdownH5Bg       = { bg = colors.bg, fg = colors.orange, bold = true },
  RenderMarkdownH6Bg       = { bg = colors.bg, fg = colors.red, bold = true },

  RenderMarkdownH1Fg       = { bg = colors.bg, fg = colors.purple, bold = true },
  RenderMarkdownH2Fg       = { bg = colors.bg, fg = colors.cyan, bold = true },
  RenderMarkdownH3Fg       = { bg = colors.bg, fg = colors.yellow, bold = true },
  RenderMarkdownH4Fg       = { bg = colors.bg, fg = colors.teal, bold = true },
  RenderMarkdownH5Fg       = { bg = colors.bg, fg = colors.orange, bold = true },
  RenderMarkdownH6Fg       = { bg = colors.bg, fg = colors.red, bold = true },

  RenderMarkdownBullet     = { fg = colors.orange },
  RenderMarkdownCodeInline = { bg = colors.black, fg = colors.cyan, bold = true },
  RenderMarkdownTableHead  = { fg = colors.cyan },
  RenderMarkdownTableRow   = { fg = colors.cyan },

  GitSignsAdd              = { fg = colors.green },
  GitSignsChange           = { fg = colors.cyan },
  GitSignsDelete           = { fg = colors.crimson },

  OilDir                   = { fg = colors.cyan },
  OilDirHidden             = { fg = colors.comment },

  BlinkCmpLabel            = { fg = colors.fg },
  BlinkCmpLabelMatch       = { fg = colors.pink },
  BlinkCmpLabelDeprecated  = { fg = colors.red },
  BlinkCmpLabelDetail      = { fg = colors.red },
  BlinkCmpLabelDescription = { fg = colors.green },

  BlinkCmpKind             = { fg = colors.blue },
  BlinkCmpKindBoolean      = { fg = colors.purple },
  BlinkCmpKindClass        = { fg = colors.pink },
  BlinkCmpKindColor        = { fg = colors.teal },
  BlinkCmpKindConstant     = { fg = colors.orange },
  BlinkCmpKindEnum         = { fg = colors.teal },
  BlinkCmpKindEnumMember   = { fg = colors.green },
  BlinkCmpKindFunction     = { fg = colors.red },
  BlinkCmpKindFile         = { fg = colors.teal },
  BlinkCmpKindFolder       = { fg = colors.cyan },
  BlinkCmpKindKeyword      = { fg = colors.green },
  BlinkCmpKindMethod       = { fg = colors.cyan },
  BlinkCmpKindSnippet      = { fg = colors.purple },
  BlinkCmpKindString       = { fg = colors.green },
  BlinkCmpKindStruct       = { fg = colors.crimson },

  BlinkCmpSource           = { fg = colors.crimson },

  -- BlinkCmpKindArray = "LspKindArray",
  -- BlinkCmpKindCodeium = { bg = "NONE", fg = "#118c74" },
  -- BlinkCmpKindConstructor = "LspKindConstructor",
  -- BlinkCmpKindEvent = "LspKindEvent",
  -- BlinkCmpKindField = "LspKindField",
  -- BlinkCmpKindInterface = "LspKindInterface",
  -- BlinkCmpKindKey = "LspKindKey",
  -- BlinkCmpKindModule = "LspKindModule",
  -- BlinkCmpKindNamespace = "LspKindNamespace",
  -- BlinkCmpKindNull = "LspKindNull",
  -- BlinkCmpKindNumber = "LspKindNumber",
  -- BlinkCmpKindObject = "LspKindObject",
  -- BlinkCmpKindOperator = "LspKindOperator",
  -- BlinkCmpKindPackage = "LspKindPackage",
  -- BlinkCmpKindProperty = "LspKindProperty",
  -- BlinkCmpKindReference = "LspKindReference",
  -- BlinkCmpKindSupermaven = { bg = "NONE", fg = "#118c74" },
  -- BlinkCmpKindTabNine = { bg = "NONE", fg = "#118c74" },
  -- BlinkCmpKindText = "LspKindText",
  -- BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  -- BlinkCmpKindUnit = "LspKindUnit",
  -- BlinkCmpKindValue = "LspKindValue",
  -- BlinkCmpKindVariable = "LspKindVariable",

  -- BlinkCmpGhostText
  -- BlinkCmpDoc
  -- BlinkCmpDocBorder
  -- BlinkCmpDocSeparator
  -- BlinkCmpDocCursorLine
  -- BlinkCmpSignatureHelp
  -- BlinkCmpSignatureHelpBorder
  -- BlinkCmpSignatureHelpActiveParameter
}

return M
