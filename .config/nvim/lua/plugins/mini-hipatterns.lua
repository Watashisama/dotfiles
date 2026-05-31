return {
  plugin = {
    "https://github.com/nvim-mini/mini.hipatterns"
  },
  config = function ()
    require("mini.hipatterns").setup({
      highlighters = {
        hex_color = require("mini.hipatterns").gen_highlighter.hex_color()
      }
    })
  end
}
