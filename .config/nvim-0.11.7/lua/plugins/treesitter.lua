return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({})
    require("nvim-treesitter").install({ "rust", "python",  "lua", "nu", "hyprlang", "toml", "qmljs" })
	end,
}
