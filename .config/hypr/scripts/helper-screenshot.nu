#!/usr/bin/env nu

def main [
  --full(-f)
  --active-region(-a)
  --region(-r)
] {
  let pic_dir = $"($env.HOME)/Pictures/Screenshots/"
  let path = $"(date now | format date "%Y-%m-%d-%H-%M-%s").png"

  mkdir $pic_dir

  if $full {
    grim $"($pic_dir)($path)"
  }
  if $active_region {
    grim -g $"(hyprctl activewindow -j | from json | $'($in.at.0),($in.at.1) ($in.size.0)x($in.size.1)')" $"($pic_dir)($path)"
  }
  if $region {
    grim -g $"(slurp)" $"($pic_dir)($path)"
  }
}
