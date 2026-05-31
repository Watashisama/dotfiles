return {
  plugin = {
    "https://github.com/nvim-treesitter/nvim-treesitter"
    -- build = ":TSUpdate",
  },
  config = function ()
    require("nvim-treesitter").setup({})
    require("nvim-treesitter").install(require("tree-parser"))
  end
}
