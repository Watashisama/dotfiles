hl.config({
  dwindle = {
    preserve_split = true -- You probably want this
  },
  master = {
    new_status = "slave"
  },
  scrolling = {
    fullscreen_on_one_column = false,
    column_width = 0.6
  }
})
hl.config({
  general = { layout = "scrolling" }
})
