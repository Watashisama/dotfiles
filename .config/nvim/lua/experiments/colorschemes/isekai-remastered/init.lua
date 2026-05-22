local M          = {}

local ui         = require("experiments.colorschemes.isekai-remastered.hl-groups.ui")
local syntax     = require("experiments.colorschemes.isekai-remastered.hl-groups.syntax")
local lsp_ish    = require("experiments.colorschemes.isekai-remastered.hl-groups.lsp-ish")
local popup_menu = require("experiments.colorschemes.isekai-remastered.hl-groups.popup-menu")
local statusline = require("experiments.colorschemes.isekai-remastered.hl-groups.statusline")
local winbar     = require("experiments.colorschemes.isekai-remastered.hl-groups.winbar")

function colorize(hl_colors)
  for group, opts in pairs(hl_colors) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

function M.setup()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")

  colorize(ui)
  colorize(syntax)
  colorize(lsp_ish)
  colorize(popup_menu)
  colorize(statusline)
  colorize(winbar)
end

return M
