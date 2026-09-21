#!/usr/bin/env nu

def "attach-to zellij-sesion" [] {
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
  );

  let sessions_metadata = (
    $sessions
    | lines
    | enumerate 
    | where $it.index mod 2 == 1
    | get item
  );

  let e = $session_names
  | wrap sessions
  | merge ( $sessions_metadata | wrap metadata )
  | input list
  | if $in != () { get sessions };

  if $e != () { zellij attach ( $e | str replace " " "" ) }
}

attach-to zellij-sesion 
