-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
-- hl.on("hyprland.start", function ()
--   hl.exec_cmd(terminal)
--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)
hl.on("hyprland.start", function ()
  hl.exec_cmd("elephant")
  hl.exec_cmd("quickshell")
  hl.exec_cmd("walker --gapplication-service")
  hl.exec_cmd("fcitx5 -d")
  hl.exec_cmd("nu ~/.config/hypr/scripts/helper-wpaperctl-wallpaper.nu")
end)
