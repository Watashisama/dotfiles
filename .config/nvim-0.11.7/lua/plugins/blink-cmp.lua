return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	config = function()
		require("blink.cmp").setup({
			keymap = {
				["<Tab>"] = { "accept", "fallback" },
				["<C-y>"] = {},
				["<C-n>"] = { "select_next", "fallback" },
				["<C-p>"] = { "select_prev", "fallback" },
			},
			appearance = {
				nerd_font_variant = "mono",
			},

			completion = { documentation = { auto_show = false } },
			sources = {
				default = { "snippets", "lsp", "path", "buffer" },
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		})
	end,
}
