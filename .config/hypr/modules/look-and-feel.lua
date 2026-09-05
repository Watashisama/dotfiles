local theme = require("modules.theme")

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
  general = {
    gaps_in          = 5,
    gaps_out         = 9,
    border_size      = 4,
    col              = {
      active_border   = {
        colors = {
          theme.color.pink .. "ee)",
          theme.color.green .. "ee)"
        },
        angle = 0
      },
      inactive_border = theme.color.visual .. "ee)"
    },
    resize_on_border = false,
    allow_tearing    = false,
    layout           = "master"
  },
  decoration = {
    rounding         = 10,
    rounding_power   = 2,
    active_opacity   = 0.95,
    inactive_opacity = 0.90,
    shadow           = {
      enabled      = false,
      range        = 4,
      render_power = 3,
      color        = 0xee1a1a00
    },
    blur             = {
      enabled  = true,
      size     = 9,
      passes   = 2,
      vibrancy = 0.9696
    }
  },
  animations = {
    enabled = true
  }
})
