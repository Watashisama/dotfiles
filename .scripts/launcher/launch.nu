#!/usr/bin/env nu

export def launcher [
  preview: any,
  items: any,
  input: any
  title: string
]: nothing -> record {
  tui split [
    (tui preview $preview --title "Content")
    ($items | tui table --title "Items")
    (tui search --placeholder $"($input)" --bind / --fuzzy --focus)
  ] -v -s [30% 1fr 3]
  | tui run
}
