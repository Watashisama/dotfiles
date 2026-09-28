#!/usr/bin/env nu

def launcher [
  content: any,
  items: any,
  input: any
  title: string
] {
  tui label --title $"($title)"
  | tui split [
    (tui box 'Content' [($content | tui table)])
    (tui box 'Items' [($items | tui table)])
    (tui search --focus --placeholder=$"($input)")
  ] --vertical --sizes=[30% 1fr 3]
  | tui bind q {
    {action: quit}
  } 
  | tui bind esc {
    {action: quit}
  }
  | tui run
}
