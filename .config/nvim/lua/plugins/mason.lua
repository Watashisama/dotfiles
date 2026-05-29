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

local aldlf = { "emmylua-codeformat", "emmylua_ls", "ruff", "rust-analyzer", "texlab" }

for _, name in ipairs(aldlf) do
  local pkg = require("mason-registry").get_package(name)

  if not pkg:is_installed() then
    pkg:install()
  end
end
