local M = {}

M.terminal = "ghostty"
M.fileManager = M.terminal .. " -e yazi"
M.music = M.terminal .. " -e rmpc"
M.sysmonitor = M.terminal .. " -e btop"
M.menu = M.terminal .. " --title=launcher -e fsel -vv -t -d"
M.browser = "firefox"
M.screenshot = {}
M.screenshot.full = "~/.config/hypr/scripts/screenshot.nu --full"
M.screenshot.region = "~/.config/hypr/scripts/screenshot.nu --region"
M.screenshot.active_region = "~/.config/hypr/scripts/screenshot.nu --active-region"
M.record = {}
M.record.full = "~/.config/hypr/scripts/record.nu --full"
M.record.region = "~/.config/hypr/scripts/record.nu --region"
M.record.active_region = "~/.config/hypr/scripts/record.nu --active-region"
M.lock = "~/.config/hypr/scripts/lock.nu"

return M
