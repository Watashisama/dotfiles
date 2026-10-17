#!/usr/bin/env nu

def main [
  --full
  --region
  --active-region
] {
  let save_file: string = "/tmp/recording.txt"
  let date: string = date now | format date "%Y-%m-%d-%H%M%S"
  let video_dir: string = $env.HOME | path join Videos/Recordings
  let video: string = $"($video_dir | path join $date)_recording.mkv"

  mkdir $video_dir
  touch $save_file

  if $full {
    if (open $save_file | is-empty) {
      echo "true\n" | save --force $save_file
      notify-send -u normal -t 2000  $"Recording at ($video)"
      echo $"wl-screenrec --low-power=off -f ($video) & echo $! >> ($save_file)" | bash
    } else if (open $save_file | lines).0 == "false" {
      echo "true\n" | save --force $save_file
      notify-send -u normal -t 2000  $"Recording at ($video)"
      echo $"wl-screenrec --low-power=off -f ($video) & echo $! >> ($save_file)" | bash
    } else {
      try {
        kill -s 2 (open $save_file | lines | $in.1 | into int)
      }
      echo "false\n" | save --force $save_file
      notify-send -u normal -t 2000  $"Ended recording at ($video)"
    }
  }
  if $region {
    if (open $save_file | is-empty) {
      echo "true\n" | save --force $save_file
      echo $"wl-screenrec --low-power=off --geometry=(slurp) -f ($video) & echo $! >> ($save_file)" | bash
      notify-send -u normal -t 2000  $"Recording at ($video)"
    } else if (open $save_file | lines).0 == "false" {
      echo "true\n" | save --force $save_file
      echo $"wl-screenrec --low-power=off --geometry=(slurp) -f ($video) & echo $! >> ($save_file)" | bash
      notify-send -u normal -t 2000  $"Recording at ($video)"
    } else {
      try {
        kill -s 2 (open $save_file | lines | $in.1 | into int)
      }
      echo "false\n" | save --force $save_file
      notify-send -u normal -t 2000  $"Ended recording at ($video)"
    }
  }
  if $active_region {
    if (open $save_file | is-empty) {
      echo "true\n" | save --force $save_file
      notify-send -u normal -t 2000  $"Recording at ($video)"
      echo $"wl-screenrec --low-power=off --geometry=(hyprctl activewindow -j | from json | $'($in.at.0),($in.at.1) ($in.size.0)x($in.size.1)') -f ($video) & echo $! >> ($save_file)" | bash
    } else if (open $save_file | lines).0 == "false" {
      echo "true\n" | save --force $save_file
      notify-send -u normal -t 2000  $"Recording at ($video)"
      echo $"wl-screenrec --low-power=off --geometry=(hyprctl activewindow -j | from json | $'($in.at.0),($in.at.1) ($in.size.0)x($in.size.1)') -f ($video) & echo $! >> ($save_file)" | bash
    } else {
      try {
        kill -s 2 (open $save_file | lines | $in.1 | into int)
      }
      echo "false\n" | save --force $save_file
      notify-send -u normal -t 2000  $"Ended recording at ($video)"
    }
  }
}
