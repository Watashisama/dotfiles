vim.lsp.config("emmylua_ls", {
  cmd = { "emmylua_ls" },
  filetypes = { "lua" },
  root_markers = { ".emmyrc.json", ".luarc.json", ".git" },
  on_attach = function (client, bufnr)
    vim.lsp.inlay_hint.enable(false, { bufnr = bufnr })
    client.server_capabilities.semanticTokensProvider = nil
  end
})

vim.lsp.enable("emmylua_ls")
