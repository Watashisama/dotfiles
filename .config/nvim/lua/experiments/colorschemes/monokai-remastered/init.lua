local M = {}
local colors = require("experiments.colorschemes.monokai-remastered.colors")

function M.setup()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")

  local hl_color = {
    -- hl-group = { fg = color.lll, bg = color.ll, ... }
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.bg },
    FloatBorder = { fg = colors.fg, bg = colors.bg },
    CursorLine = { bg = colors.gray1 },
    Visual = { bg = colors.gray },
    Search = { fg = colors.bg, bg = colors.orange },
    IncSearch = { fg = colors.bg, bg = colors.orange },
    StatusLineNC = { bg = colors.orange },
    VertSplit = { fg = colors.gray },
    WinSeparator = { fg = colors.gray },
    LineNr = { fg = colors.gray },
    CursorLineNr = { fg = colors.orange, bold = true },
    SignColumn = { bg = colors.bg },
    Folded = { fg = colors.gray, bg = colors.gray },

    Pmenu = { fg = colors.fg, bg = colors.gray },
    PmenuSel = { fg = colors.bg, bg = colors.orange },
    PmenuSbar = { bg = colors.gray },
    PmenuThumb = { bg = colors.orange },

    Comment = { fg = colors.gray, italic = true },
    Constant = { fg = colors.magenta },
    String = { fg = colors.green },
    Identifier = { fg = colors.blue },
    Function = { fg = colors.yellow },
    Statement = { fg = colors.red },
    Type = { fg = colors.cyan, bold = true },
    Special = { fg = colors.yellow },
    Error = { fg = colors.red, bold = true },
    Keyword = { fg = colors.red },
    Variable = { fg = colors.fg },
    TSKeyword = { fg = colors.red },
    TSFunction = { fg = colors.yellow },
    TSVariable = { fg = colors.fg },
    TSType = { fg = colors.cyan },

    StatusFile = { fg = colors.green, bold = true },

    StatusNormal = { fg = colors.bg, bg = "#82aaff", bold = true },
    StatusInsert = { fg = colors.bg, bg = "#c3e88d", bold = true },
    StatusVisual = { fg = colors.bg, bg = "#fca7ea", bold = true },
    StatusCommand = { fg = colors.bg, bg = "#ff966c", bold = true },
    StatusTerminal = { fg = colors.bg, bg = "#4fd6be", bold = true },
    StatusReplace = { fg = colors.bg, bg = "#ff757f", bold = true },
    StatusSelect = { fg = colors.bg, bg = "#ffc777", bold = true },
    StatusPending = { fg = colors.bg, bg = "#c099ff", bold = true },
    StatusConfirm = { fg = colors.bg, bg = "#4fd6be", bold = true },

    StatusLine = { fg = colors.bg, bg = "#1e2030", bold = true },
    StatusLineText = { fg = "#828bb8", bg = colors.bg, bold = true },
    StatusLineText2 = { fg = "#828bb8", bg = colors.bg },

    StatusLineError = { fg = "#c53b53", bg = "#3b4261" },
    StatusLineWarn = { fg = "#ffc777", bg = "#3b4261" },
    StatusLineHint = { fg = "#4fd6be", bg = "#3b4261" },
  }

  for group, opts in pairs(hl_color) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
