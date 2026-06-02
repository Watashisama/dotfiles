# A wallpaper util from hyprland with hyprpaper
def wallpaper [
  # --help(-h) #Print help information
] {
  help wallpaper
}

def "nu-complete wall-change" [] {
  ls ($env.XDG_CONFIG_DIR)/wallpapers 
  | get name
  | str replace ".png" "" -a
  | str replace $"($env.XDG_CONFIG_DIR)/wallpapers/" "" 
}

# Changes wallpaper with optional settings
def "wallpaper change" [
  --random(-r), # Show a random wallpaper
  wallpaper?: string@"nu-complete wall-change"
] {
  let wallpaper_dir = $env.XDG_CONFIG_DIR | path join wallpapers/;
  let wallpapers = (
    ls $wallpaper_dir
    | get index
    | length
  );

  if $wallpaper == ()  {
    help 'wallpaper change'
  } else if $random {
    let random_number = random int 1..($wallpapers - 1);

    hyprctl hyprpaper wallpaper $"eDP-1, (ls -f  $wallpaper_dir | get $random_number | get name), [cover]";
  } else {
    hyprctl hyprpaper wallpaper $"eDP-1, ($wallpaper_dir)/($wallpaper).png, [cover]";
  };
}
