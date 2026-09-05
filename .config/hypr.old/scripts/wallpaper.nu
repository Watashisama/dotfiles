#!/usr/bin/env nu

# echo "hyprpaper &" | bash
# sleep 300ms
let wallpaper_dir = $env.XDG_CONFIG_DIR | path join wallpapers/
let wallpapers = (
  ls $wallpaper_dir
  | get index
  | length
)
let random_number = random int 1..($wallpapers)
let wall = (ls -f $wallpaper_dir | get name | get $random_number)

rm ~/.local/share/hyprpaper/hyprpaper.conf

echo $"
preload = ,($wall)
splash = false
wallpaper {
    monitor = eDP-1
    path = ($wall)
    fit_mode = cover
}" | save -f ~/.local/share/hyprpaper/hyprpaper.conf
