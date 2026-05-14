vim.pack.add({
	{
		src = "https://github.com/saghen/blink.cmp",
		name = "blink.cmp",
		version = "v1.10.2",
	},
})

require("plugins.dependency.blink-cmp")

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
	providers = {
		snippets = {
			score_offset = 100,
		},
		lsp = {
			score_offset = 50,
		},
	},
	fuzzy = {
		implementation = "prefer_rust_with_warning",
	},
})
