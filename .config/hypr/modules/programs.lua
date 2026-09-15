local M = {}

M.terminal = "ghostty"
M.fileManager = M.terminal .. " -e yazi"
M.menu = "nc -U /run/user/1000/walker/walker.sock"
M.browser = "helium-browser"

return M
