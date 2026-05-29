vim.lsp.config("ty", {
  cmd = { 'ty', 'server' },
  filetypes = { "python" },
  settings = {
    ty = {}
  }
})

vim.lsp.config('ruff', {
  cmd = { 'ruff', 'server' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git' }
})

-- Required: Enable the language server
vim.lsp.enable("ty")
vim.lsp.enable("ruff")
