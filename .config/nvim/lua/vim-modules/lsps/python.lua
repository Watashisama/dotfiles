vim.lsp.config("ty", {
  cmd = { 'ty', 'server' },
  settings = {
    ty = {
      -- ty language server settings go here
    }
  }
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

vim.lsp.config('ruff', {
  cmd = { 'ruff', 'server' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git' }
  -- init_options = {
  --   settings = {
  --     -- Ruff language server settings go here
  --   }
  -- }
})

-- Required: Enable the language server
vim.lsp.enable("ty")
vim.lsp.enable("ruff")
