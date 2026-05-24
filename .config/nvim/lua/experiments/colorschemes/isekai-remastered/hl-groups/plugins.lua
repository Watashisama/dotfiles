local colors = require("experiments.colorschemes.isekai-remastered.colors")
local M = {
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
  RenderMarkdownCodeInline = { bg = colors.visual, fg = colors.cyan },
  RenderMarkdownTableHead  = { fg = colors.cyan },
  RenderMarkdownTableRow   = { fg = colors.cyan },

  GitSignsAdd              = { fg = colors.green },
  GitSignsChange           = { fg = colors.cyan },
  GitSignsDelete           = { fg = colors.crimson },

  BlinkCmpLabel            = { fg = colors.pink },
  BlinkCmpLabelDeprecated  = { fg = colors.red },
  BlinkCmpLabelDetail      = { fg = colors.fg },
  BlinkCmpLabelDescription = { fg = colors.fg },
  BlinkCmpKind             = { fg = colors.red },

  -- BlinkCmpKindArray = "LspKindArray",
  -- BlinkCmpKindBoolean = "LspKindBoolean",
  -- BlinkCmpKindClass = "LspKindClass",
  -- BlinkCmpKindCodeium = {
  --   bg = "NONE",
  --   fg = "#118c74"
  -- },
  -- BlinkCmpKindColor = "LspKindColor",
  -- BlinkCmpKindConstant = "LspKindConstant",
  -- BlinkCmpKindConstructor = "LspKindConstructor",
  -- BlinkCmpKindCopilot = {
  --   bg = "NONE",
  --   fg = "#118c74"
  -- },
  -- BlinkCmpKindDefault = {
  --   bg = "NONE",
  --   fg = "#6172b0"
  -- },
  -- BlinkCmpKindEnum = "LspKindEnum",
  -- BlinkCmpKindEnumMember = "LspKindEnumMember",
  -- BlinkCmpKindEvent = "LspKindEvent",
  -- BlinkCmpKindField = "LspKindField",
  -- BlinkCmpKindFile = "LspKindFile",
  -- BlinkCmpKindFolder = "LspKindFolder",
  -- BlinkCmpKindFunction = "LspKindFunction",
  -- BlinkCmpKindInterface = "LspKindInterface",
  -- BlinkCmpKindKey = "LspKindKey",
  -- BlinkCmpKindKeyword = "LspKindKeyword",
  -- BlinkCmpKindMethod = "LspKindMethod",
  -- BlinkCmpKindModule = "LspKindModule",
  -- BlinkCmpKindNamespace = "LspKindNamespace",
  -- BlinkCmpKindNull = "LspKindNull",
  -- BlinkCmpKindNumber = "LspKindNumber",
  -- BlinkCmpKindObject = "LspKindObject",
  -- BlinkCmpKindOperator = "LspKindOperator",
  -- BlinkCmpKindPackage = "LspKindPackage",
  -- BlinkCmpKindProperty = "LspKindProperty",
  -- BlinkCmpKindReference = "LspKindReference",
  -- BlinkCmpKindSnippet = "LspKindSnippet",
  -- BlinkCmpKindString = "LspKindString",
  -- BlinkCmpKindStruct = "LspKindStruct",
  -- BlinkCmpKindSupermaven = {
  --   bg = "NONE",
  --   fg = "#118c74"
  -- },
  -- BlinkCmpKindTabNine = {
  --   bg = "NONE",
  --   fg = "#118c74"
  -- },
  -- BlinkCmpKindText = "LspKindText",
  -- BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  -- BlinkCmpKindUnit = "LspKindUnit",
  -- BlinkCmpKindValue = "LspKindValue",
  -- BlinkCmpKindVariable = "LspKindVariable",

  BlinkCmpSource           = { fg = colors.crimson },
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
