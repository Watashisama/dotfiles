return {
	"nvim-mini/mini.nvim",
	version = "*",
	config = function()
		require("mini.animate").setup({
			cursor = {
				enable = false,
			},
			scroll = {
				enable = false,
			},
			resize = {
				enable = false,
			},
			open = {
				enable = false,
			},
			close = {
				enable = false,
			},
		})
		require("mini.hipatterns").setup({
			highlighters = {
				hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
			},
		})
	end,
}
