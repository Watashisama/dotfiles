-- vim.lsp.config("lua_ls", {
-- settings = {
-- Lua = {
-- runtime = { version = "LuaJIT" },
-- diagnostics = {
-- globals = { "vim" },
-- },
-- workspace = {
-- checkThirdParty = false,
-- library = {
-- vim.env.VIMRUNTIME,
-- },
-- },
-- telemetry = {
-- enable = false,
-- },
-- format = {
-- enable = true,
-- defaultConfig = {
-- indent_style = "spaces",
-- indent_size = "2",
-- },
-- },
-- },
-- },
-- })
--
-- vim.lsp.enable("lua_ls")

vim.lsp.config("emmylua_ls", {
  cmd = { "emmylua_ls" },
  filetypes = { "lua" },
  root_markers = { ".emmyrc.json", ".luarc.json", ".git" },
  settings = {
    hint = { enable = false },
    emmylua = {
      -- Tell the server which Lua you're using (usually LuaJIT, for Neovim).
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
      -- Make the server aware of Neovim runtime files.
      workspace = {
        library = {
          vim.env.VIMRUNTIME,
          -- For LSP Settings Type Annotations: https://github.com/neovim/nvim-lspconfig#lsp-settings-type-annotations
          vim.api.nvim_get_runtime_file('lua/lspconfig', false)[1]
        }
        -- Or pull in all of 'runtimepath'. May be slower! https://github.com/neovim/nvim-lspconfig/issues/3189
        -- library = vim.api.nvim_get_runtime_file('', true),
      }
    }
  }
})

vim.lsp.enable("emmylua_ls")
