return {
	"stevearc/conform.nvim",
	lazy = false,
	config = function()
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
        nu = {
          "nufmt",
        }
			},
		})
	end,
}
