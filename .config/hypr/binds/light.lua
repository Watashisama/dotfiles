-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), {
  locked = true,
  repeating = true
})
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), {
  locked = true,
  repeating = true
})
-- Keyboard Brit
hl.bind("XF86KbdBrightnessUp", hl.dsp.exec_cmd("brightnessctl -d ':white:kbd_backlight' set +20%"), {
  locked = true,
  repeating = true
})
hl.bind("XF86KbdBrightnessDown", hl.dsp.exec_cmd("brightnessctl -d ':white:kbd_backlight' set 20%-"), {
  locked = true,
  repeating = true
})
