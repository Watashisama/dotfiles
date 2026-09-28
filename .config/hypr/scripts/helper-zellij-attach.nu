#!/usr/bin/env nu

def "attach-to zellij-sesion" [] {
  let sessions = (
    zellij list-sessions -n 
    | complete
    # | str replace "[" "\n[" -a
  );

  if $sessions.exit_code != 0 {zellij} else {

    let sessions = (
      zellij list-sessions -n 
      | str replace "[" "\n[" -a
    );

    let session_names = (
      $sessions
      | lines
      | enumerate 
      | where $it.index mod 2 == 0
      | get item
      | str replace " " ""
    );

    let sessions_metadata = (
      $sessions
      | lines
      | enumerate 
      | where $it.index mod 2 == 1
      | get item
    );

    let e = $sessions_metadata
    | str replace "[Created " "" -a
    | str replace " ago]" "" -a
    | str replace "m" "min" -a
    | str replace "h" "hr" -a
    | str replace "s" "sec" -a
    | into duration
    | wrap time
    | merge ($session_names | wrap names)
    | sort-by time
    | $in.names.0

    zellij attach $"($e)"
  }
}

attach-to zellij-sesion 
