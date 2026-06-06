local M = {}
M.music_player = "rmpc"
M.terminal = "ghostty"
M.fileManager = "yazi"
M.screenshot_window = "hyprshot -m window -o ~/Pictures/Screenshots"
M.screenshot_region = "hyprshot -m region -o ~/Pictures/Screenshots"
M.screenshot_output = "hyprshot -m output -o ~/Pictures/Screenshots"
M.screenrec_fullscreen = "~/.scripts/recording/main.nu"
M.lock = "hyprlock"
M.browser = "helium-browser"
M.sysmonitor = "btop"
M.color_picker = "hyprpicker --autocopy"
M.network = "impala"
-- local menu        = "hyprlauncher"
-- local screenshot_active = hl.dsp.exec_cmd("hyprshot", "-m", "active", "-o", "~/Pictures/Screenshots")
--
return M
