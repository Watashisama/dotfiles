return {
  plugin = {
    "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  },
  config = function ()
    require('render-markdown').setup({
      completions = { lsp = { enabled = false } }
    })
  end
}
