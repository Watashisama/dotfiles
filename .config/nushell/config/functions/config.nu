# Configure nvim
def "config nvim" [] {
  nvim $"($env.XDG_CONFIG_DIR)/nvim/init.lua"
}

def "config ghostty" [] {
  nvim $"($env.XDG_CONFIG_DIR)/ghostty/config.ghostty"
}

def "config dotfiles" [] {
  nvim $"($env.HOME)/dotfiles"
}

def "config niri" [] {
  nvim $"($env.XDG_CONFIG_DIR)/niri/config.kdl"
}
