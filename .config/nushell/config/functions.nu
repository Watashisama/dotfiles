def clear-trash [] {
  print "Opening trash"
  print (ls ~/.local/share/Trash/ --du)
  print "Clearing trash"
  rm ~/.local/share/Trash/* -rfp --interactive-once 
  print "Trash cleared"
}

def daemonize [command: string] {
  echo $"($command) &" | bash
}

def "config nvim" [] {
  nvim $"($env.XDG_CONFIG_DIR)/nvim/init.lua"
}

def "config ghostty" [] {
  nvim $"($env.XDG_CONFIG_DIR)/ghostty/config.ghostty"
}

def "config dotfiles" [] {
  nvim $"($env.HOME)/dotfiles"
}

def wallpaper [] {}

def "nu-complete wall-change" [] {
  ls ($env.XDG_CONFIG_DIR)/wallpapers 
  | get name
  | str replace ".png" "" -a
  | str replace $"($env.XDG_CONFIG_DIR)/wallpapers/" "" 
}

def "wallpaper change" [
  --random(-r),
  wallpaper?: string@"nu-complete wall-change"
] {
  let wallpaper_dir = $env.XDG_CONFIG_DIR | path join wallpapers/;
  let wallpapers = (
    ls $wallpaper_dir
    | get index
    | length
  );

  if $random {
    let random_number = random int 1..($wallpapers);

    hyprctl hyprpaper wallpaper $"eDP-1, (ls $wallpaper_dir | get $random_number | get name), [cover]";
  } else {
    hyprctl hyprpaper wallpaper $"eDP-1, ($wallpaper_dir)/($wallpaper).png, [cover]";
  };
}
