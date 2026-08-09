#!/usr/bin/nu

let wallpaper_dir = $env.XDG_CONFIG_DIR | path join wallpapers/
let wallpapers = (
  ls $wallpaper_dir
  | get index
  | length
)
let random_number = random int 1..($wallpapers)
let wall = (ls -f $wallpaper_dir | get name | get $random_number)

rm -pf ~/.local/share/wpaperd/config.toml

# wpaperctl set-wallpaper $wall
mkdir ($env.XDG_CONFIG_DIR | path join wpaperd/)
echo $"[default]
mode = 'center'

[any]
path = '($wall)'" | save -f ~/.local/share/wpaperd/config.toml
