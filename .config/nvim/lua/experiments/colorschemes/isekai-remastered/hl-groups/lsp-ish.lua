local colors = require("experiments.colorschemes.isekai-remastered.colors")
local M = {
  Error = { sp = colors.red, undercurl = true },
  Warn = { sp = colors.yellow, undercurl = true },
  Info = { sp = colors.teal, undercurl = true },
  Hint = { sp = colors.teal, undercurl = true },
  Ok = { sp = colors.orange, undercurl = true },
  DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
  DiagnosticUnderlineWarn = { sp = colors.yellow, undercurl = true },
  DiagnosticUnderlineInfo = { sp = colors.teal, undercurl = true },
  DiagnosticUnderlineHint = { sp = colors.teal, undercurl = true },
  DiagnosticUnderlineOk = { sp = colors.orange, undercurl = true },
  DiagnosticError = { fg = colors.red },
  DiagnosticWarn = { fg = colors.yellow },
  DiagnosticInfo = { fg = colors.teal },
  DiagnosticHint = { fg = colors.teal },
  DiagnosticOk = { sp = colors.orange, undercurl = true }
}

return M
