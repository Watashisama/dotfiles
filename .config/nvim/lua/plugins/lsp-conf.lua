vim.pack.add({
  -- "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/mason-org/mason.nvim"
  -- "https://github.com/mason-org/mason-lspconfig.nvim"
})

require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})
-- require("mason-lspconfig").setup({
-- ensure_installed = { "emmylua_ls", "rust_analyzer", "texlab", "ruff" }
-- })

local aldlf = { "emmylua_ls", "emmylua-codeformat", "rust-analyzer", "texlab", "ruff" }

for _, name in ipairs(aldlf) do
  local pkg = require("mason-registry").get_package(name)

  if not pkg:is_installed() then
    pkg:install()
  end
end
