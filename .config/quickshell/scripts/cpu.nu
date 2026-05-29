#!/usr/bin/env nu

mut last_total = 0
mut last_idle = 0

def get-cpu-stats [] {
  let parts = (open /proc/stat | lines | first | split row ' ' | where $it != "")

  # Extract numbers (skip "cpu")
  let nums = ($parts | skip 1 | each { |x| $x | into int })

  let user    = $nums.0
  let nice    = $nums.1
  let system  = $nums.2
  let idle    = $nums.3
  let iowait  = $nums.4
  let irq     = $nums.5
  let softirq = $nums.6
  let steal   = $nums.7

  let total = ($nums | math sum)
  let idle_all = ($idle + $iowait)

  { total: $total, idle: $idle_all }
}

loop {
  let stats = (get-cpu-stats)

    if ($last_total > 0) {
      let total_diff = ($stats.total - $last_total)
      let idle_diff  = ($stats.idle  - $last_idle)

      if ($total_diff > 0) {
        let cpu = (100 * ($total_diff - $idle_diff) / $total_diff)
        $"($cpu | into float | math round -p 0)%" | save -f /tmp/cpu.txt
      }
    }

  $last_total = $stats.total
  $last_idle  = $stats.idle

  sleep 2sec
}
