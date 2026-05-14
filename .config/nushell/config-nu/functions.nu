def clear-trash [] {
  print "Clearing trash"
  rm ~/.local/share/Trash/* -rf --interactive-once 
  print "Trash cleared"
}

def daemonize [command: string] {
  echo $"($command) &" | bash
}
