local M = {}

M.terminal = "ghostty"
M.fileManager = M.terminal .. " -e yazi"
M.music = M.terminal .. " -e rmpc"
M.sysmonitor = M.terminal .. " -e btop"
M.menu = M.terminal .. " --title=launcher -e fsel -vv -t -d"
M.browser = "firefox"
M.screenshot = {}
M.screenshot.full = "~/.config/hypr/scripts/helper-screenshot.nu --full"
M.screenshot.region = "~/.config/hypr/scripts/helper-screenshot.nu --region"
M.screenshot.active_region = "~/.config/hypr/scripts/helper-screenshot.nu --active-region"

return M
