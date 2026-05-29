local M = {}

local lsp_ish = require("vim-modules.colorschemes.isekai-remastered.hl-groups.lsp-ish")
local plugins = require("vim-modules.colorschemes.isekai-remastered.hl-groups.plugins")
local popup_menu = require("vim-modules.colorschemes.isekai-remastered.hl-groups.popup-menu")
local statusline = require("vim-modules.colorschemes.isekai-remastered.hl-groups.statusline")
local syntax = require("vim-modules.colorschemes.isekai-remastered.hl-groups.syntax")
local ui = require("vim-modules.colorschemes.isekai-remastered.hl-groups.ui")
local winbar = require("vim-modules.colorschemes.isekai-remastered.hl-groups.winbar")

function M.colorize(hl_colors)
  for group, opts in pairs(hl_colors) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

function M.setup()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")
  vim.opt.background = "dark"
  vim.g.colors_name = "isekai-remastered"

  M.colorize(ui)
  M.colorize(syntax)
  M.colorize(lsp_ish)
  M.colorize(popup_menu)
  M.colorize(statusline)
  M.colorize(winbar)
  M.colorize(plugins)
end

return M
