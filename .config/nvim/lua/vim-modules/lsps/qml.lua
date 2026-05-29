vim.lsp.config('qmlls', {
  cmd = { 'qmlls6', '-E' },
  filetypes = { 'qml', 'qmljs' }
})
vim.lsp.enable('qmlls')
