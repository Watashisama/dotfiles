-------------
--- INPUT ---
-------------

hl.config({
  input = {
    kb_layout = "us",
    kb_variant = "",
    kb_model = "",
    kb_options = "caps:swapescape",
    kb_rules = "",
    repeat_delay = 300,
    repeat_rate = 70,
    follow_mouse = 1,
    sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
    touchpad = {
      natural_scroll = true,
      clickfinger_behavior = true
    }
  }
})

hl.gesture({
  fingers = 3,
  direction = "horizontal",
  action = "workspace"
})
