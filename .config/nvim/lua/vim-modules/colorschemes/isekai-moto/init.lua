local M = {}

local lsp_ish = require("vim-modules.colorschemes.isekai-moto.hl-groups.lsp-ish")
local plugins = require("vim-modules.colorschemes.isekai-moto.hl-groups.plugins")
local popup_menu = require("vim-modules.colorschemes.isekai-moto.hl-groups.popup-menu")
local statusline = require("vim-modules.colorschemes.isekai-moto.hl-groups.statusline")
local syntax = require("vim-modules.colorschemes.isekai-moto.hl-groups.syntax")
local ui = require("vim-modules.colorschemes.isekai-moto.hl-groups.ui")
local winbar = require("vim-modules.colorschemes.isekai-moto.hl-groups.winbar")
local language = require("vim-modules.colorschemes.isekai-moto.hl-groups.language-overrides")

function M.colorize(hl_colors)
  for group, opts in pairs(hl_colors) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

function M.setup()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")
  vim.opt.background = "dark"
  vim.g.colors_name = "isekai-moto"

  M.colorize(ui)
  M.colorize(syntax)
  M.colorize(lsp_ish)
  M.colorize(popup_menu)
  M.colorize(statusline)
  M.colorize(winbar)
  M.colorize(plugins)
  M.colorize(language)

  for _, group in ipairs(vim.fn.getcompletion("LspDocumentColor_", "highlight")) do
    if group:match("_background$") then
      vim.api.nvim_set_hl(0, group, { bg = "NONE" })
    end
  end
  -- Make background transparent
  vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  ]])
  vim.cmd([[
  :hi statusline guibg=NONE
  ]])
end

return M
