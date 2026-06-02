$env.PROMPT_COMMAND = {||
  let duration: string = if (($env.CMD_DURATION_MS | into int) <= 1000) {
    ""
  } else {
    (ansi yellow) + $" ($env.CMD_DURATION_MS | into duration --unit ms)" + (ansi reset)
  }
  let dir: string = if ((pwd) =~ ($nu.home-dir)) {
    (ansi cyan) + ( (pwd) | str replace $nu.home-dir "~" ) + (ansi reset)
  } else {
    (ansi cyan) + (pwd) + (ansi reset)
  }

  let arrow: string = if $env.LAST_EXIT_CODE == 0 {
    (ansi green_bold) + "-> " + (ansi reset)
  } else {
    (ansi red_bold) + "~> " + (ansi reset)
  }

  let git = git status --short | complete 
  let gitb = git branch | complete 
  let git_branch: any = ($gitb | if $in.exit_code != 0 {
    ""
  } else {
    $gitb.stdout 
    | str substring 2.. 
    | str replace "\n" ""  -ar
    | $" ($in)"
  })
  let git_branch = (ansi blue) + $git_branch + (ansi reset)
  let git_status: any = if ($git.exit_code != 0)  or ($git.stdout == "") {
    ""
  } else {
    let gitstdout = $git.stdout | lines | str substring 0..1
    let modified = $gitstdout
    | each {
      if $in == " M" {1} else {0}
    } | math sum

    let deleted = $gitstdout
    | each {
      if $in == " D" {1} else {0}
    } | math sum

    let untracked = $gitstdout
    | each {
      if $in == '??' {1} else {0}
    } | math sum

    let modified = if $modified != 0 { $" ($modified)M" } else { "" }
    let deleted = if $deleted != 0 { $" ($deleted)D" } else { "" }
    let untracked = if $untracked != 0 { $" ($untracked)??" } else { "" }


     (ansi green_bold) + $"($modified)" + (ansi red_bold) + $"($deleted)" + (ansi red) + $"($untracked)" + (ansi reset)
  }

  $"($dir)($duration)($git_branch)($git_status)\n($arrow)"
}

$env.PROMPT_COMMAND_RIGHT = {||
  if $env.LAST_EXIT_CODE != 0 {
    (ansi red) + $"($env.LAST_EXIT_CODE) :\(" + (ansi reset)
  } else {
    ""
  }
}

$env.PROMPT_INDICATOR_VI_NORMAL = "> "
$env.PROMPT_INDICATOR_VI_INSERT = ": "
$env.PROMPT_MULTILINE_INDICATOR = (ansi grey) + "     " + (ansi reset)
$env.PROMPT_INDICATOR = ""
$env.TRANSIENT_PROMPT_MULTILINE_INDICATOR = $env.PROMPT_MULTILINE_INDICATOR
$env.TRANSIENT_PROMPT_COMMAND = {||
  let arrow: string = if $env.LAST_EXIT_CODE == 0 {
    (ansi green) + "-> " + (ansi reset)
  } else {
    (ansi red) + "~> " + (ansi reset)
  }
  $arrow
}
$env.config.render_right_prompt_on_last_line = false
