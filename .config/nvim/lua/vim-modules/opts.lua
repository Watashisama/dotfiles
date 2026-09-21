vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.mouse = ""
vim.opt.cursorline = true
vim.opt.winborder = "single"
vim.opt.swapfile = false
vim.opt.guicursor = "n-v-c-sm-ci-ve-r-cr-o-i:block"
vim.opt.list = true
vim.opt.listchars = {
  -- Invisible chars
  nbsp = '_',
  tab = ' ',
  trail = '␣',
  eol = '󰌑'
}
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Make background transparent
-- vim.cmd([[
--   highlight Normal guibg=NONE ctermbg=NONE
--   highlight NormalNC guibg=NONE ctermbg=NONE
-- ]])
-- vim.cmd(":hi statusline guibg=NONE")

vim.opt.winbar = table.concat({
  "%{%&modified ? '%#WinBarModified#' : '%#WinBarSaved#'%}",
  "%=",
  "%F",
  "%="
})
vim.o.cmdheight = 0
