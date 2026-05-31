return {
  plugin = {
    {
      src = "https://github.com/lervag/vimtex",
      name = "vimtex",
      version = "v2.17"
    }
    -- lazy = false,
  },
  config = function ()
    vim.g.vimtex_view_method = "general"
  end
}
