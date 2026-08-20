#!/usr/bin/nu

let audio = (
  wpctl status 
  | lines 
)
let start: int = (
  $audio
  | each { if $in == ' ├─ Sinks:' { 1 } else { 0 } } 
  | enumerate 
  | where item == 1 
  | get index
  | $in.0
)

let end: int = (
  $audio
  | each { if $in == ' ├─ Sources:' { 1 } else { 0 } } 
  | enumerate 
  | where item == 1 
  | get index
  | $in.0
)

let range = (
  wpctl status 
  | lines 
  | enumerate 
  | where $start < ($it.index | into int) and ($it.index | into int) < $end - 1
  | get item
)

let name = (
  $range | each {
    str replace * ' '
    | str substring ($in | str index-of '.'| $in + 1)..
    | str substring ..($in | str index-of '[' | $in - 1)
    | str replace ' ' ''
    | str replace -r '[ \t]+$' ''
  }
)

let audio_devices = (
  wpctl list audio sinks
  | lines
  | each {
    str replace 'audio/sink' '' 
    # | str replace -r '.+\s+' ''
  }
)
let audio_device_ids = (
  wpctl list audio sinks
  | lines
  | each {
    str replace -r '\s+.*' ''
  }
)

let d = (
  $audio_device_ids 
  | wrap id 
  | merge ( $audio_devices | wrap device )
  | merge ( $name | wrap sink )
)

let e = (
  $d
  | each {
    if ($in.device | str index-of "*" | $in > 0) {
      '*'
    } else {
      ' '
    }
  }
)

$audio_device_ids
| wrap id
| merge ( $name | wrap sink )
| merge ( $e | wrap selected )
| input list
| if $in != () { wpctl set-default $in.id }
