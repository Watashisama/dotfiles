return {
  plugin = {
    "https://github.com/nvim-mini/mini.indentscope"
  },
  config = function ()
    require("mini.indentscope").setup({
      draw = {
        delay = 0,
        animation = require('mini.indentscope').gen_animation.none(),
        predicate = function (scope) return not scope.body.is_incomplete end,
        priority = 2
      },
      mappings = {
        object_scope = 'ii',
        object_scope_with_border = 'ai',
        goto_top = '[i',
        goto_bottom = ']i'
      },
      options = {
        border = 'both',
        indent_at_cursor = true,
        n_lines = 10000,
        try_as_border = false
      },
      symbol = '|'
    })
  end
}
