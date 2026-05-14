module "zoxide extern" { 
  def complete_none [] { [] }

  export extern z [
    destination?: string@complete_none  # Go home
  ]
}
