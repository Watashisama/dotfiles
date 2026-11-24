#!/usr/bin/env nu

^ps -A
| rg fsel
| complete
| if ($in.exit_code != 0) {
  exec fsel '-vv' '-t' '-d'
} else {
  exit
}
