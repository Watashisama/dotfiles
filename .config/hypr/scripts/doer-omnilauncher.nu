#!/usr/bin/env nu

def main [
] {
  let x = ps -l | where command == $"rio --app-id=launcher -e ($env.HOME)/.config/hypr/scripts/doer-omnilauncher-fsel.nu"
  if ($x | to text | $in != '' and $x.pid.1? != ()) {
    kill -s 9 $x.pid.0?
  }

  let options = {
    search: {
      id: "2419329067823cab5b4e5ac5dd18a6abf1f57f45e753f5fc934292f3085a3717"
      description: "Search with localhost on port 8087."
      cmd: "start http://127.0.0.1:8087/search?q={}"
    }
    archwiki: {
      id: "5d79673be8d168ddeb2a494fe42f434d81f08f217a0a93372e47fbd7ec560f8f"
      description: "Search the arch wiki"
      cmd: "start https://wiki.archlinux.org/index.php?search={}"
    }
    terminal: {
      id: "4e686af7bdcc5ae005a247624fd8c7283257c2514f6b3ad2ff5d4cb6d95196e6"
      description: "Run command in the $TERM"
      cmd: $"{}"
    }
    apps: {
      id: "d56f6359d240f69e4164425b599d08869574fc013b9e5727951048914db12c5b"
      description: "Launch apps with fsel"
      cmd: "fsel -vv -r -d"
    }
  };

  let s = (
    $options
    | sort
    | items {|key, value| $"($key), ($value.description)" }
    | str join "\0"
  )

  $s
  | fsel --dmenu0 --delimiter="," --with-nth=1 --accept-nth=1 
  | str replace -r '\(.+\)' ''
  | match $in {
    search => {custom search ($options | get search) search}
    archwiki => {custom search ($options | get archwiki) archwiki}
    terminal => {custom terminal ($options | get terminal)}
    apps => {custom apps ($options | get apps)}
    "" => {}
    _ => {
      error make {
        msg: "Invalid query"
        labels: [
          {
            text: $"Try one of '($options | columns | to text)'"
            span: (metadata $in).span
          }
        ]
      }
    }
  }
}

def custom [] {
  help custom
}

def "custom search" [
  option: record<id: string,description: string, cmd: string>
  search_option: string
] {
  if $option.id != ($search_option | hash sha256) {
    error make {
      msg: "The wrong custom function was used(custom search)"
      labels: [
        {
          text: "Try a different custom function"
          span: (metadata $option).span
        }
      ]
    }
  } else {
    $env.FSEL_TITLE_PANEL_HEIGHT_PERCENT = 0;
    let out = fsel --dmenu --prompt-only

    nu -c ($option.cmd | str replace "{}" ($out | str replace " " "+" -a))
  }
}

def "custom terminal" [
  option: record<id: string,description: string, cmd: string>
] {
  if $option.id != ("terminal" | hash sha256) {
    error make {
      msg: "The wrong custom function was used(custom search)"
      labels: [
        {
          text: "Try a different custom function"
          span: (metadata $option).span
        }
      ]
    }
  } else {
    $env.FSEL_TITLE_PANEL_HEIGHT_PERCENT = 0;
    let out = fsel --dmenu --prompt-only

    nu -c ($option.cmd | str replace "{}" $out)
  }
}

def "custom apps" [
  option: record<id: string,description: string, cmd: string>
] {
  if $option.id != ("apps" | hash sha256) {
    error make {
      msg: "The wrong custom function was used(custom search)"
      labels: [
        {
          text: "Try a different custom function"
          span: (metadata $option).span
        }
      ]
    }
  } else {
    nu -c $option.cmd 
  }
}
