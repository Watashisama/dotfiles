def clear-trash [] {
  print "Opening trash"
  print (ls ~/.local/share/Trash/ --du)
  print "Clearing trash"
  rm ~/.local/share/Trash/* -rfp --interactive-once 
  print "Trash cleared"
}

def daemonize [command: string] {
  echo $"($command) &" | bash
}

def "config nvim" [] {
  nvim $"($env.XDG_CONFIG_DIR)/nvim/init.lua"
}

def "config ghostty" [] {
  nvim $"($env.XDG_CONFIG_DIR)/ghostty/config.ghostty"
}
