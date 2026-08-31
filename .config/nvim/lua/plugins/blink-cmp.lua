return {
  plugin = {
    {
      src = "https://github.com/saghen/blink.cmp",
      name = "blink.cmp",
      version = "v1.10.2"
    }
  },
  config = function ()
    require("dependency.blink-cmp")

    require("blink.cmp").setup({
      keymap = {
        ["<Tab>"] = { "accept", "fallback" },
        ["<C-y>"] = {},
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" }
      },
      appearance = {
        nerd_font_variant = "mono"
      },
      -- completion = { documentation = { auto_show = true } },
      sources = {
        default = { "snippets", "lsp", "path", "buffer" },
        providers = {
          path = {
            score_offset = 400
          },
          snippets = {
            score_offset = function ()
              if vim.bo.filetype == "tex" then
                return 399
              else
                return 1
              end
            end
          },
          lsp = {
            score_offset = 300
          },
          buffer = {
            score_offset = 200
          }
        }
      },
      fuzzy = {
        implementation = "prefer_rust_with_warning"
      }
    })
  end
}
