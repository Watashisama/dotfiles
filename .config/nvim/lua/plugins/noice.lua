vim.pack.add({
	"https://github.com/folke/noice.nvim",
})

require("plugins.dependency.noice")

require("noice").setup({
	messages = {
		enabled = false,
	},
	notify = {
		enabled = false,
	},
	views = {
		cmdline_popup = {
			position = {
				row = -2,
				col = "50%",
			},
			size = {
				width = 60,
				height = "auto",
			},
		},
	},
})
