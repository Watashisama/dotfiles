-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Keyboard Brit
hl.bind("XF86KbdBrightnessUp", hl.dsp.exec_cmd("brightnessctl -d ':white:kbd_backlight' set +20%")
-- { locked = true, repeating = true }
)
hl.bind("XF86KbdBrightnessDown", hl.dsp.exec_cmd("brightnessctl -d ':white:kbd_backlight' set 20%-")
-- { locked = true, repeating = true }
)
