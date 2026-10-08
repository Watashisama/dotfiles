#!/usr/bin/env nu


let __desktop_files = (
  $"/usr/share/applications/
/usr/local/share/applications/
($env.HOME)/.local/share/applications/
($env.HOME)/Desktop/"
  | lines
);

let __preview = {|row|
  $"($row.comment | is-empty | if $in {"No description\n"} else {$"($row.comment)\n"} )\nTerminal: ($row.terminal)"
};


def desktop-files [desktop_files: list<string>] {
  $desktop_files
  | each {|it|
    if ($it | path exists) {
      ls $it -f
      | where name =~ '.desktop'
      | get name
    }
  } | where ($it | is-not-empty) 
  | flatten
}

def "desktop-files parse" [
  desktop_file: string
]: nothing -> record<name: string exec: string terminal: bool comment: string> {
  let name = $desktop_file
  | lines
  | where ($it | str substring ..4) == 'Name='
  | to text
  | str substring 5..
  | lines
  | $in.0
  | to text
  | str replace "\n" "" --all 

  let exec = $desktop_file
  | lines
  | where ($it | str substring ..4) == 'Exec='
  | to text
  | str substring 5..
  | lines
  | $in.0
  | to text
  | str replace "\n" "" --all 
  | str replace " %." "" -r

  let t = $desktop_file
  | lines 
  | where ($it | str substring ..8) == 'Terminal='
  | to text
  | str substring 9..

  let terminal = if ($t | is-empty) {
    false
  } else {
    $t | into bool
  }

  let comment = $desktop_file
  | lines 
  | where ($it | str substring ..7) == 'Comment='
  | to text
  | str substring 8..
  | str replace "\n" "" --all 

  {
    name: $name
    exec: $exec
    terminal: $terminal
    comment: $comment
  }
}

def launcher [
  preview: any,
  items: any,
  input: any
  title: string
]: nothing -> record {
  tui split [
    (tui preview $preview --title "Content")
    ($items | tui table --title "Items" --columns ['name'])
    (tui search --placeholder $"($input)" --bind / --focus)
  ] -v -s [30% 1fr 3]
  | tui bind ctrl+q {|| {action: quit}}
  | tui run
}

let x = (
  launcher  
  $__preview 
  ((desktop-files $__desktop_files) | each {desktop-files parse (open $in)}) 
  "Search apps" 
  "Apps"
);

if $x.values.table-0.row.terminal {
  $x
  | exec ...(
    $in.values.table-0.row.exec
    | str replace " " "\n" -a 
    | lines
  )
} else {
  job spawn {
    $x
    | exec ...(
      $in.values.table-0.row.exec
      | str replace " " "\n" -a 
      | lines
    )
  }
}
