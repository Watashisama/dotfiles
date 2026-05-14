vim.pack.add({
	"https://github.com/nvim-treesitter/nvim-treesitter",
	-- build = ":TSUpdate",
})

require("nvim-treesitter").setup({})
require("nvim-treesitter").install(require("tree-parser"))
