vim.lsp.config("ty", {
	settings = {
		ty = {
			-- ty language server settings go here
		},
	},
	-- on_attach = function(client, bufnr)
	-- 	vim.lsp.completion.enable(true, client.id, bufnr, {
	-- 		autotrigger = true,
	-- 		convert = function(item)
	-- 			return { abbr = item.label:gsub("%b()", "") }
	-- 		end,
	-- 	})
	-- 	vim.keymap.set("i", "<C-space>", vim.lsp.completion.get, { desc = "trigger autocompletion" })
	-- end,
})

-- Required: Enable the language server
vim.lsp.enable("ty")
