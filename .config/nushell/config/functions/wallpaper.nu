module wall {
  alias wall = echo $"($env.XDG_CONFIG_DIR? | default $'($env.HOME)/.config')/wallpapers/"

  # A wallpaper wrapper powered by wpaperd(https://github.com/danyspin97/wpaperd)
  export def wallpaper [] {
    help wallpaper
  }

  def "nu-complete gen-wallpapers" [token: record] {
    ls -f ($env | get -o WALLPAPER_DIR | default (wall))
    | get name
    | str replace (wall) '' -a
    | str replace '.png' '' -a
    | where $it =~ $token.text
  }

  # Set the wallpaer to the specified path on all monitors or specify the monitors you want
  export def 'wallpaper set' [path?: string@"nu-complete gen-wallpapers", ...monitors: string, --random(-r)] {
    if $random {
      wpaperctl set-wallpaper $"(ls (wall) | get name | shuffle | first)" ...$monitors
    } else {
      wpaperctl set-wallpaper $"((wall))($path | if ($in | is-empty) {error make -u { msg: "Missing required positional argument." }} else {$path}).png" ...$monitors
    }
  }


  # Get the information relating to the wallpapers and monitors as structured data
  export def 'wallpaper get' [--monitor(-m): string, --all(-a)] {
    if $all {
      wpaperctl all-wallpapers -j
      | from json 
    } else if $monitor != () {
      wpaperctl get-wallpaper $monitor
    } else {
      help wallpaper get
    }
  }

  # Print out the status of the wwallpapers and monitors as structured data
  export def 'wallpaper status' [--monitor(-m): string] {
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
}

use wall *
