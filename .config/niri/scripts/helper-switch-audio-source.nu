#!/usr/bin/nu

let dsink = (
  wpctl inspect @DEFAULT_SINK@
  | lines
  | first 
  | str replace 'id ' '' 
)

let sdsink = (
  $dsink
  | str index-of ','
)

let sink = (
  $dsink
  | str substring 0..($sdsink - 1)
)

let sink = $sink | into int

if $sink == 57 { wpctl set-default $"($sink - 1)" } else { wpctl set-default $"($sink + 1)" }
