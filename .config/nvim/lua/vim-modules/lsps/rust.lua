vim.lsp.config("rust-analyzer", {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { "Cargo.toml", "Cargo.lock", ".git" },
  root_dir = function (bufnr, on_dir)
    local fname = vim.api.nvim_buf_get_name(bufnr)

    local root = vim.fs.root(fname, {
      "Cargo.toml",
      "rust-project.json",
      ".git"
    })

    on_dir(root)
  end,
  -- root_dir = find_root,
  settings = {
    assist = {
      importPrefix = "by_self"
    },
    imports = {
      granularity = {
        group = "module"
      },
      prefix = "self"
    },
    cargo = {
      allFeatures = true
    },
    procMacro = {
      enable = true
    },
    closureReturnTypeHints = {
      enable = "with_block"
    },
    lifetimeElisionHints = {
      enable = "skip_trivial"
    },
    cachePriming = {
      enable = false
    }
  }
})

vim.lsp.enable("rust-analyzer")
