local pack = vim.pack
local M = {}

function M.install(ptable)
  local plugin = ptable.plugin
  local config = ptable.config()

  pack.add(plugin)
  config()
end

return M
