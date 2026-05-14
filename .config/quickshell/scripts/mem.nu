#!/usr/bin/env nu

loop {
  let mem = (
    free
      | rg Mem 
      | str replace -ar '\s+' "\n"
      | lines
  )
  let totalmem = $mem.1 | into int
  let usedmem = $mem.2 | into int

  let memUsage = (
    100 * $usedmem / $totalmem | math round -p 0 | save -f /tmp/mem.txt
  )
  sleep 2sec
}
