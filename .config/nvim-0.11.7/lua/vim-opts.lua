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
vim.opt.winborder = "rounded"
vim.opt.swapfile = false
vim.opt.guicursor = "i:block"
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.snacks_animate = false
-- vim.opt.winbar = "%=%F%="

-- Make background transparent
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
]])
vim.cmd(":hi statusline guibg=NONE")

vim.opt.winbar = "%{%&modified ? '%#WinBarModified#' : '%#WinBarSaved#'%}%F%#WinBarSaved#%=%{%reg_recording() != '' ? '%#WinBarRecording#Recording @'.reg_recording().' %*' : ''%}"
vim.o.cmdheight = 0
