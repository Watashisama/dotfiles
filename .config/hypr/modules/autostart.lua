-----------------
--- AUTOSTART ---
-----------------

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function ()
  hl.exec_cmd("hyprctl setcursor Banana-Mod 32")
  hl.exec_cmd("wayle panel start")
  hl.exec_cmd("~/.config/hypr/scripts/wallpaper.nu")
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("dunst")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  -- hl.exec_cmd("/usr/lib/xdg-desktop-portal-hyprland")
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("fcitx5 -d")
  -- hl.exec_cmd( "systemd-inhibit --who='Hyprland config' --why='Disable Lid suspend' --what=handle-lid-switch   --mode=block sleep infinity & echo $! > /tmp/.hyprland-systemd-inhibit-lid")
end)

-- exec-once = ~/.config/hypr/scripts/wpctl.nu
-- exec-once = ~/.config/quickshell/scripts/cpu.nu
-- exec-once = ~/.config/quickshell/scripts/mem.nu
-- exec-once = systemd-inhibit --who="Hyprland config" --why="wlogout keybind" --what=handle-power-key --mode=block sleep infinity & echo $! > /tmp/.hyprland-systemd-inhibit-poweroff
