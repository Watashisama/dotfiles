# To daemonize any string as a function in bash
def daemonize [command: string] {
  echo $"($command) & disown" | bash
}

module d {
  export def "nu-complete dot changes __add" [
    token: record
  ] {
    git status --short 
    | lines
    | each {
      if ($in | str substring ..1) == "M " {''} else {$in}
    }
    | where $it != ''
    | each {|it|
      match ($it | str substring ..1) {
        ' M' => ({value: $"($it | str substring 3..)", description: 'Modified File', style: green})
        ' D' => ({value: $"($it | str substring 3..)", description: 'Deleted File', style: red})
        "??" => ({value: $"($it | str substring 3..)", description: 'Untracked File', style: red_bold})
      }
    }
    | where $it.value =~ $token.text
  }
}

use d *

# For dotfile management
def dot []: nothing -> nothing {
  help dot
}

# Show the changes made to dotfiles
def "dot changes" [
]: nothing -> table<status: string, files: string> {
  git status -s
  | lines
  | str replace '^ M' 'modified' -r
  | str replace '^\?\?' 'untracked' -r
  | str replace '^A' 'added' -r
  | str replace '^ D' 'deleted' -r
  | parse -r '^\s*(?<status>\S+)\s+(?<files>.+)$'
}
