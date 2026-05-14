#!/usr/bin/env nu

let bat0: string = "/sys/class/power_supply/BAT0/"
let percent: int = (
  (open $"($bat0)/charge_now" | into int) / (open $"($bat0)/charge_full" 
  | into int) * 100 
  | math round -p 1
)
let status: string = (open $"($bat0)/status")


notify-send -u normal -t 2000 $"At ($percent)%, ($status)"
