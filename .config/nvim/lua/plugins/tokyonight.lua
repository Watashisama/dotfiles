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
