vim.pack.add({
  {
    src = "https://github.com/saghen/blink.cmp",
    name = "blink.cmp",
    version = "v1.10.2",
  },
})

require("plugins.dependency.blink-cmp")

require("blink.cmp").setup({
  keymap = {
    ["<Tab>"] = { "accept", "fallback" },
    ["<C-y>"] = {},
    ["<C-n>"] = { "select_next", "fallback" },
    ["<C-p>"] = { "select_prev", "fallback" },
  },
  appearance = {
    nerd_font_variant = "mono",
  },

  completion = { documentation = { auto_show = true } },
  sources = {
    default = { "snippets", "lsp", "path", "buffer" },
    providers = {
      path = {
        score_offset = 4,
      },
      snippets = {
        score_offset = 1,
      },
      lsp = {
        score_offset = 3,
      },
      buffer = {
        score_offset = 2
      },
    },
  },
  fuzzy = {
    implementation = "lua",
  },
})
