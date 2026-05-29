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
    ["rust-analyzer"] = {
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
        loadOutDirsFromCheck = true
      },
      procMacro = {
        enable = true
      }
    }
  }
})

vim.lsp.enable("rust-analyzer")
