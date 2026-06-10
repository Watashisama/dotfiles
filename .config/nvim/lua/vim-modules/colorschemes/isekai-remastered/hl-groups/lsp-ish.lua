local colors = require("vim-modules.colorschemes.isekai-remastered.colors")
local M = {
  Error = { sp = colors.red, undercurl = true },
  Warn = { sp = colors.yellow1, undercurl = true },
  Info = { sp = colors.teal, undercurl = true },
  Hint = { sp = colors.teal, undercurl = true },
  Ok = { sp = colors.orange, undercurl = true },
  DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
  DiagnosticUnderlineWarn = { sp = colors.yellow1, undercurl = true },
  DiagnosticUnderlineInfo = { sp = colors.teal, undercurl = true },
  DiagnosticUnderlineHint = { sp = colors.teal, undercurl = true },
  DiagnosticUnderlineOk = { fg = colors.green, bold = true },
  DiagnosticError = { fg = colors.red },
  DiagnosticWarn = { fg = colors.yellow1 },
  DiagnosticInfo = { fg = colors.teal },
  DiagnosticHint = { fg = colors.teal },
  DiagnosticOk = { fg = colors.green, bold = true }
}

return M
