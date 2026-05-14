return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "moon",
      transparent = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true, italic = true },
        variables = {},
      }
    })
  end
}
