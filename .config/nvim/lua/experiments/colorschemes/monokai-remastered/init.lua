local M = {}
local color = require("experiments.colorschemes.monokai-remastered.colors")

function M.setup()
  local hl_color = {
    -- hl-group = { fg = color.lll, bg = color.ll, ... }
    Normal = { fg = color.fg },
  }

  for group, opts in pairs(hl_color) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
