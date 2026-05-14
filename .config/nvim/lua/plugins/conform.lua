vim.pack.add({
	{
		src = "https://github.com/stevearc/conform.nvim",
		-- version = "v9.1.0",
	},
})

require("conform").setup({
	formatters_by_ft = {
		python = {
			"ruff_fix",
			"ruff_format",
			"ruff_organize_imports",
		},
		lua = {
			"stylua",
		},
	},
})
