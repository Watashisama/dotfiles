let wall = $"($env.XDG_CONFIG_DIR? | default $'($env.HOME)/.config')/wallpapers/"

def wallpaper [] {
  help wallpaper
}

def "nu-complete gen-wallpapers" [token: record] {
  ls -f ($env | get -o WALLPAPER_DIR | default $wall)
  | get name
  | str replace $wall '' -a
  | str replace '.png' '' -a
  | where $it =~ $token.text
}

def 'wallpaper set' [path: string@"nu-complete gen-wallpapers", monitor?: string] {
  if $monitor == () {
    wpaperctl set-wallpaper $"($wall)($path).png"
  } else {
    wpaperctl set-wallpaper $"($wall)($path).png" $monitor
  }
}

def 'wallpaper get' [--monitor(-m): string, --all(-a)] {
  if $all {
    wpaperctl all-wallpapers -j
    | from json 
  } else if $monitor != () {
    wpaperctl get-wallpaper $monitor
  } else {
    help wallpaper get
  }
}

def 'wallpaper status' [--monitor(-m): string] {
  if $monitor == () {
    wpaperctl status -j
    | from json
    | default 'null' 'duration_left'
  } else {
    wpaperctl status -j
    | from json
    | default 'null' 'duration_left'
    | where display == $monitor
  }
}
