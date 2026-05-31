vim.pack.add({
  "https://github.com/folke/tokyonight.nvim"
})

require("tokyonight").setup({
  style = "moon",
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { italic = true },
  }
})
vim.cmd("colorscheme tokyonight-moon")

local set = vim.api.nvim_set_hl

set(0, "StatusFile", { fg = "#c3e88d", bold = true })

set(0, "StatusNormal", { fg = "#1e2030", bg = "#82aaff", bold = true })
set(0, "StatusInsert", { fg = "#1e2030", bg = "#c3e88d", bold = true })
set(0, "StatusVisual", { fg = "#1e2030", bg = "#fca7ea", bold = true })
set(0, "StatusCommand", { fg = "#1e2030", bg = "#ff966c", bold = true })
set(0, "StatusTerminal", { fg = "#1e2030", bg = "#4fd6be", bold = true })
set(0, "StatusReplace", { fg = "#1e2030", bg = "#ff757f", bold = true })
set(0, "StatusSelect", { fg = "#1e2030", bg = "#ffc777", bold = true })
set(0, "StatusPending", { fg = "#1e2030", bg = "#c099ff", bold = true })
set(0, "StatusConfirm", { fg = "#1e2030", bg = "#4fd6be", bold = true })

set(0, "StatusLine", { fg = "#1e2030", bg = "#1e2030", bold = true })
set(0, "StatusLineText", { fg = "#828bb8", bg = "#1e2030", bold = true })
set(0, "StatusLineText2", { fg = "#828bb8", bg = "#1e2030" })

set(0, "StatusLineError", { fg = "#c53b53", bg = "#3b4261" })
set(0, "StatusLineWarn", { fg = "#ffc777", bg = "#3b4261" })
set(0, "StatusLineHint", { fg = "#4fd6be", bg = "#3b4261" })
