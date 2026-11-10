# To daemonize any string as a function in bash
def daemonize [command: string] {
  echo $"($command) & disown" | bash
}

