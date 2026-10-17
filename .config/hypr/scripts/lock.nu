#!/usr/bin/env nu

mkdir ~/.local/share/lock

let wallpaper: string = (
  wpaperctl get-all --json
  | from json
  | get path
  | $in.0
)

echo $"background {
  monitor = 
  path = ($wallpaper)
  blur_passes = 2
}
input-field {
  monitor =
  size = 20%, 5%
  inner_color = rgba\(26,26,26,0.0\)

  fail_color = rgba\(255,95,95,1.0\)
  check_color = rgba\(152,224,36,1.0\)

  fail_text = $FAIL <b>\($ATTEMPTS\)</b>

  font_color = rgb\(253,151,31\)
  font_family = JetBrainsMono Nerd Font Mono
  dots_size = 0.4
  dots_text_format = *

  fade_on_empty = false
  rounding = 0

  position = 0, 0
  halign = center
  valign = center
}
shape {
  monitor =
  border_size = 4
  size = 20%, 5%

  position = 0, 0
  halign = center
  valign = center
}" | save -f ~/.local/share/lock/config

hyprlock --config ~/.local/share/lock/config
