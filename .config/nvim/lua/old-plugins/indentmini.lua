vim.pack.add({
  'https://github.com/nvimdev/indentmini.nvim',
})

require('indentmini').setup({
  char = '│',
  draw = {
    enabled = true, -- Enable drawing indent guides
    char = '│', -- Use '│' for indent guides
  },
  -- Optional: Scope configuration for highlighting the current scope
  scope = {
    enabled = true, -- Highlight the current indent scope
    symbol = '┆', -- Use '┆' for current indent scope
    show_start = true, -- Show the start of the scope
    show_end = true, -- Show the end of the scope
    animation = false, -- Disable any animations for smooth transitions
  },
})
