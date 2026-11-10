module d {
  def nil [ token: record ] {
    [] | where $it != $token.text
  }
  def "nu-complete dot add" [
    token: record
  ] {
    git -C (dotfiles-dir-check) status --short 
    | lines
    | each {
      if ($in | str substring ..1) == "M " {''} else {$in}
    }
    | where $it != ''
    | each {|it|
      match ($it | str substring ..1) {
        'MM' => ({value: $"($it | str substring 3..)", description: 'Modified File', style: green})
        'AM' => ({value: $"($it | str substring 3..)", description: 'Modified File', style: green})
        "??" => ({value: $"($it | str substring 3..)", description: 'Untracked File', style: red_bold})
      }
    }
    | where $it.value =~ $token.text
  }

  def "path contains" [
    path: string
  ]: string -> bool {

    match ($in | str index-of $path) {
      -1 => false
      _ => true
    }
  }
  def dotfiles-dir-check [] {
    if ($env.pwd | path contains ($env.home)/dotfiles) {
      pwd
    } else {
      $nu.home-dir | path join dotfiles
    }
  }

# For dotfile management
  export def dot []: nothing -> nothing {
    help dot
  }

# Show the changes made to dotfiles.
  @example "Look at the changes to the dotfiles" {
    dot changes
  } --result [
    [status files];
    [MM .config/nushell/config.nu]
    [?? .config/hypr/hyprland.conf]
    [?? .config/walye]
  ]
  export def "dot changes" [
    ]: nothing -> table<status: string, files: string> {
      git -C (dotfiles-dir-check) status -s
      | lines
      | parse -r '^\s*(?<status>\S+)\s+(?<files>.+)$'
    }

# Add modified and untracked files with git add.
    @example "Add changes and or untracked files to the dotfiles" {
      dot add .config/nushell/config.nu
    } --result {}
    @example "Give not arguments to add all changes" {
      dot add
    } --result {}
    export def "dot add" [
      ...files: string@"nu-complete dot add"
    ]: nothing -> nothing {
      if ($files | is-not-empty) {
        git -C (dotfiles-dir-check) add ...$files
      } else {
        git -C (dotfiles-dir-check) add ($nu.home-dir | path join dotfiles)
      }
    }

# Move modified files with git mv.
    @example "Move files from relative to `$nu.home-dir | path join dotfiles`. Also creates dirs if the location dir does not exist(prints if it is done)" {
      dot move .config/hypr/hyprland.conf .config/hypr.old/hyprland.conf
    } --result "Created .config/hypr.old"
    export def "dot move" [
      ...files: string
    ]: nothing -> nothing {
      $files
      | each {|path|
        $path
        | if not ($in | path exists) {
          print $"Created ($path | path relative-to (pwd))"
          mkdir $path
        }
      }
      git -C (dotfiles-dir-check) mv ...$files
    }

# Remove files from the git worktree with git.
    @example "Remove files" {
      dot rm .config/walye
    } --result {}
    export def "dot rm" [
      ...files: string
    ] {
      git -C (dotfiles-dir-check) rm ...$files
    }

# Go to dotfiles
    @example "Quickly and effortlessly move to work dotfiles" {
      dot goto
    }
    export def --env "dot goto" []: nothing -> nothing {
      cd ($env.DOTFILES_DIR? | default ($nu.home-dir | path join dotfiles))
    }

# Commit files with git
    @complete nil
    export def "dot commit" [
      --msg(-m): string
    ] {
      if ($msg | is-empty) {
        git -C (dotfiles-dir-check) commit -m $"Updated (dot changes | where $it.status not-has ?? | $in.files | each { path split | last } | to text | str replace "\n" ", " -a | str substring ..-3)"
      } else {
        git -C (dotfiles-dir-check)  commit -m $msg
      }
    }
}

use d *

