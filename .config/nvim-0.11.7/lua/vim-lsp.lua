-- Optional: Only required if you need to update the language server settings
vim.lsp.config("ty", {
	settings = {
		ty = {
			-- ty language server settings go here
		},
	},
})

-- Required: Enable the language server
vim.lsp.enable("ty")

vim.lsp.config("ruff", {
	init_options = {
		settings = {
			-- Ruff language server settings go here
		},
	},
})

vim.lsp.enable("ruff")

vim.lsp.config("lua-language-server", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".emmyrc.json",
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {
		Lua = {
			codeLens = { enable = true },
			hint = { enable = true, semicolon = "Disable" },
		},
	},
})

vim.lsp.enable("lua-language-server")

vim.lsp.config("typos_lsp", {
	-- typos-lsp must be on your PATH, or otherwise change this to an absolute path to typos-lsp
	-- defaults to typos-lsp if unspecified
	cmd = { "typos-lsp" },
	-- Logging level of the language server. Logs appear in :LspLog. Defaults to error.
	cmd_env = { RUST_LOG = "error" },
	init_options = {
		-- Custom config. Used together with a config file found in the workspace or its parents,
		-- taking precedence for settings declared in both.
		-- Equivalent to the typos `--config` cli argument.
		config = "~/code/typos-lsp/crates/typos-lsp/tests/typos.toml",
		-- How typos are rendered in the editor, can be one of an Error, Warning, Info or Hint.
		-- Defaults to Info.
		diagnosticSeverity = "Info",
	},
})

vim.lsp.enable("typos_lsp")

vim.lsp.config("nu_lsp", {
	cmd = { "nu", "--lsp" },
	filetypes = { "nu" },
})

vim.lsp.enable("nu_lsp")

vim.lsp.config("nufmt", {
	cmd = { "nufmt" },
	filetypes = { "nu" },

	on_attach = function(client, bufnr)
		-- Only use for formatting
		client.server_capabilities.hoverProvider = false
		client.server_capabilities.definitionProvider = false

		-- Format on save
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({
					async = false,
					filter = function(c)
						return c.name == "nufmt"
					end,
				})
			end,
		})
	end,
})

vim.lsp.enable("nufmt")

vim.lsp.enable("nufmt")

vim.lsp.set_log_level("off")
