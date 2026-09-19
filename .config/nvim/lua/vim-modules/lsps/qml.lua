vim.lsp.config('qmlls', {
  cmd = { 'qmlls6', '-E' },
  filetypes = { 'qml', 'qmljs' },
  on_attach = function (client, bufnr)
    vim.lsp.inlay_hint.enable(false, { bufnr = bufnr })
    client.server_capabilities.semanticTokensProvider = nil
  end
})
vim.lsp.enable('qmlls')
