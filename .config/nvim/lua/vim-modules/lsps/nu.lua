vim.lsp.config("nu_lsp", {
  cmd = { "nu", "--lsp" },
  filetypes = { "nu" },
})

vim.lsp.enable("nu_lsp")
