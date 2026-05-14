vim.pack.add({
  "https://github.com/nvim-mini/mini.hipatterns"
})

require("mini.hipatterns").setup({
  highlighters = {
    hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
  },
})
