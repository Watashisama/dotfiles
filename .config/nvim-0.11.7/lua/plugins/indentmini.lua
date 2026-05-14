return {
  'nvimdev/indentmini.nvim',
  event = 'BufEnter',
  config = function()
    require('indentmini').setup({
      -- Character for indent guides (similar to snacks' clean borders)
      char = '│',             -- Use a simple vertical line as the indent character
      -- Configure the behavior of indent guides
      draw = {
        enabled = true,        -- Enable drawing indent guides
        char = '│',            -- Use '│' for indent guides
      },
      -- Optional: Scope configuration for highlighting the current scope
      scope = {
        enabled = true,        -- Highlight the current indent scope
        symbol = '┆',          -- Use '┆' for current indent scope
        show_start = true,     -- Show the start of the scope
        show_end = true,       -- Show the end of the scope
        animation = false,     -- Disable any animations for smooth transitions
      },
    })
  end,
}
