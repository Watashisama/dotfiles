vim.lsp.config("ty", {
  cmd = { 'ty', 'server' },
  filetypes = { "python" },
  settings = {
    ty = {}
  },
  on_attach = function (client)
    client.server_capabilities.semanticTokensProvider = nil
  end
})

vim.lsp.config('ruff', {
  cmd = { 'ruff', 'server' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git' },
  on_attach = function (client)
    client.server_capabilities.semanticTokensProvider = nil
  end
})

-- Required: Enable the language server
vim.lsp.enable("ty")
vim.lsp.enable("ruff")
