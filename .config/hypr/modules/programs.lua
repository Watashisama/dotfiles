local M = {}

M.terminal = "rio"
M.fileManager = M.terminal .. " -e yazi"
M.music = M.terminal .. " -e rmpc"
M.sysmonitor = M.terminal .. " -e btop"
M.menu = M.terminal .. "  --app-id=otter-launcher -e fsel"
M.browser = "helium-browser"

return M
