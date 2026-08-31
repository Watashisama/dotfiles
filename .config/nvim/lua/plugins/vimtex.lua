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
    vim.g.vimtex_compiler_method = "latexmk"

    vim.g.vimtex_compiler_latexmk = {
      executable = "latexmk",
      options = {
        "-lualatex",
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error"
      }
    }
  end
}
