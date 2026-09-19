local M = {}

M.terminal = "rio"
M.fileManager = M.terminal .. " -e yazi"
M.music = M.terminal .. " -e rmpc"
M.sysmonitor = M.terminal .. " -e btop"
M.menu = "nc -U /run/user/1000/walker/walker.sock"
M.browser = "helium-browser"

return M
