vim.lsp.config("emmylua_ls", {
  cmd = { "emmylua_ls" },
  filetypes = { "lua" },
  root_markers = { ".emmyrc.json", ".luarc.json", ".git" },
  settings = {
    hint = { enable = false },
    emmylua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
      workspace = {
        library = {
          vim.env.VIMRUNTIME,
          vim.api.nvim_get_runtime_file('lua/lspconfig', false)[1]
        }
      }
    }
  },
  on_attach = function (client, bufnr)
    vim.lsp.inlay_hint.enable(false, { bufnr = bufnr })
  end
})

vim.lsp.enable("emmylua_ls")
