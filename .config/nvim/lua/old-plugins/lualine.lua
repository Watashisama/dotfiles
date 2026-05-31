vim.pack.add({
  'https://github.com/nvim-lualine/lualine.nvim',
})

require("plugins.plugins.dependency.lualine")

require("lualine").setup({
  options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '│', right = '│' },
    -- theme = {
    --   normal = {
    --     a = { bg = colors.blue, fg = colors.bg_dark },
    --     b = { bg = colors.fg_gutter, fg = colors.blue },
    --     c = { bg = colors.bg, fg = colors.fg_dark },
    --   },
    --   insert = {
    --     a = { bg = colors.green, fg = colors.bg_dark },
    --     b = { bg = colors.fg_gutter, fg = colors.green },
    --   },
    --   command = {
    --     a = { bg = colors.yellow, fg = colors.bg_dark },
    --     b = { bg = colors.fg_gutter, fg = colors.yellow },
    --   },
    --   visual = {
    --     a = { bg = colors.magenta, fg = colors.bg_dark },
    --     b = { bg = colors.fg_gutter, fg = colors.magenta },
    --   },
    --   replace = {
    --     a = { bg = colors.red, fg = colors.bg_dark },
    --     b = { bg = colors.fg_gutter, fg = colors.red },
    --   },
    --   terminal = {
    --     a = { bg = colors.green1, fg = colors.bg_dark },
    --     b = { bg = colors.fg_gutter, fg = colors.green1 },
    --   },
    --   inactive = {
    --     a = { bg = colors.bg, fg = colors.blue },
    --     b = { bg = colors.bg, fg = colors.fg_gutter, gui = "bold" },
    --     c = { bg = colors.bg, fg = colors.fg_gutter },
    --   },
    --   }
  }
})
