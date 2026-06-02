def daemonize [command: string] {
  echo $"($command) &" | bash
}
