local M = {}

M.terminal = "rio"
M.fileManager = M.terminal .. " -e yazi"
M.music = M.terminal .. " -e rmpc"
M.sysmonitor = M.terminal .. " -e btop"
M.menu = M.terminal .. " --app-id=launcher -e ~/.config/hypr/scripts/doer-omnilauncher.nu"
M.browser = "firefox"
M.screenshot = {}
M.screenshot.full = "~/.config/hypr/scripts/helper-screenshot.nu --full"
M.screenshot.region = "~/.config/hypr/scripts/helper-screenshot.nu --region"
M.screenshot.active_region = "~/.config/hypr/scripts/helper-screenshot.nu --active-region"

return M
