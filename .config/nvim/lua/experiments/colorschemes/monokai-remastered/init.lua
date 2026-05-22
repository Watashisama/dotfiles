local M = {}
local colors = require("experiments.colorschemes.monokai-remastered.colors")

function M.setup()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")

  local hl_color = {
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.bg },
    FloatBorder = { fg = colors.fg, bg = colors.bg },
    CursorLine = { bg = colors.black },
    Visual = { bg = colors.visual },
    Search = { fg = colors.bg, bg = colors.cyan },
    IncSearch = { fg = colors.bg, bg = colors.orange },
    -- StatusLineNC = { bg = colors.orange },
    VertSplit = { fg = colors.gray },
    WinSeparator = { fg = colors.gray },
    LineNr = { fg = colors.gray },
    CursorLineNr = { fg = colors.orange, bold = true },
    SignColumn = { bg = colors.bg },
    Folded = { fg = colors.gray, bg = colors.gray },

    Pmenu = { fg = colors.fg, bg = colors.black },
    PmenuSel = { fg = colors.bg, bg = colors.purple },
    PmenuSbar = { bg = colors.crimson },
    PmenuBorder = { fg = colors.green },
    PmenuThumb = { bg = colors.gray },

    Comment = { fg = colors.gray, italic = true },
    Constant = { fg = colors.orange },
    String = { fg = colors.green },
    Identifier = { fg = colors.orange },
    Function = { fg = colors.yellow },
    Statement = { fg = colors.red },
    Type = { fg = colors.cyan, bold = true },
    Special = { fg = colors.yellow },

    Error = { sp = colors.red, undercurl = true },
    Warn = { sp = colors.yellow, undercurl = true },
    Info = { sp = colors.teal, undercurl = true },
    Hint = { sp = colors.teal, undercurl = true },

    DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = colors.yellow, undercurl = true },
    DiagnosticUnderlineInfo = { sp = colors.teal, undercurl = true },
    DiagnosticUnderlineHint = { sp = colors.teal, undercurl = true },

    DiagnosticError = { fg = colors.red, },
    DiagnosticWarn = { fg = colors.yellow, },
    DiagnosticInfo = { fg = colors.teal, },
    DiagnosticHint = { fg = colors.teal, },

    Keyword = { fg = colors.red },
    Variable = { fg = colors.fg },
    TSKeyword = { fg = colors.red },
    TSFunction = { fg = colors.yellow },
    TSVariable = { fg = colors.fg },
    TSType = { fg = colors.cyan },

    StatusFile = { fg = colors.green, bold = true },

    StatusNormal = { fg = colors.bg, bg = colors.cyan, bold = true },
    StatusInsert = { fg = colors.bg, bg = colors.green, bold = true },
    StatusVisual = { fg = colors.bg, bg = colors.pink, bold = true },
    StatusCommand = { fg = colors.bg, bg = colors.orange, bold = true },
    StatusTerminal = { fg = colors.bg, bg = colors.teal, bold = true },
    StatusReplace = { fg = colors.bg, bg = colors.red, bold = true },
    StatusSelect = { fg = colors.bg, bg = colors.yellow, bold = true },
    StatusPending = { fg = colors.bg, bg = colors.purple, bold = true },
    StatusConfirm = { fg = colors.bg, bg = colors.teal, bold = true },

    StatusLine = { fg = colors.bg, bg = colors.bg, bold = true },
    StatusLineText = { fg = colors.fg, bg = colors.bg, bold = true },
    StatusLineText2 = { fg = colors.gray1, bg = colors.bg },

    StatusLineError = { fg = colors.crimson, bg = colors.gray1 },
    StatusLineWarn = { fg = colors.yellow, bg = colors.gray1 },
    StatusLineHint = { fg = colors.teal, bg = colors.gray1 },

    WinBar = { bg = colors.bg },
    WinBarSaved = { fg = colors.gray },
    WinBarModified = { fg = colors.orange },
    WinBarRecording = { fg = colors.red, bold = true },
  }

  for group, opts in pairs(hl_color) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
