def daemonize [command: string] {
  echo $"($command) & disown" | bash
}
