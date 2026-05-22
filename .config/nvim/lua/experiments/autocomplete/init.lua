vim.opt.autocomplete = true
vim.opt.complete:append('o')
vim.opt.completeopt = { 'menuone', 'noselect', 'popup' }
vim.opt.pumheight = 9
vim.opt.pumborder = 'rounded'

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})

-- vim.pack.add({
--   "https://github.com/L3MON4D3/LuaSnip",
--   "https://github.com/rafamadriz/friendly-snippets"
-- })
--
--
-- require("luasnip.loaders.from_vscode").lazy_load()
