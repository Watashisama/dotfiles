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

hyprctl hyprpaper wallpaper $"eDP-1, ~/.config/wallpapers/($random_number).png, [cover]"
