#!/usr/bin/env nu

let save_file: string = "/tmp/recording.txt"
let date: string = date now | format date "%Y-%m-%d-%H%M%S"
let video_dir: string = $env.HOME | path join Videos/Recordings
let video: string = $"($video_dir | path join $date)_recording.mkv"
touch $save_file

def hrecord [] {
  echo $"wl-screenrec --low-power=off -f ($video) & echo $! >> ($save_file)"
  | bash

  echo (open $save_file | lines | $"true\n($in.1)") 
  | save --force $save_file
}


def record [] {
  if (open $save_file) == "" {
    echo "false\n" | save --force $save_file
    notify-send -u normal -t 2000  $"Recording at ($video)"
    hrecord
  } else if (open $save_file | lines).0 == "false" {
    notify-send -u normal -t 2000  $"Recording at ($video)"
    hrecord
  } else {
    kill -s 2 (open $save_file | lines | $in.1 | into int)
    echo "false\n" | save --force $save_file
    notify-send -u normal -t 2000  $"Ended recording at ($video)"
  }
}

record
