def clear-trash [] {
  print "Opening trash"
  print (ls ~/.local/share/Trash/ --du)
  print "Clearing trash"
  rm ~/.local/share/Trash/* -rfp --interactive-once 
  print "Trash cleared"
}
