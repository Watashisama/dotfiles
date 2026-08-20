# vim: ft=tmux
# Misc
set-option -g history-limit 500000
set -g message-command-style bg=default,fg=BLUE
set -g mode-style bg=BLUE,fg=BLACK
setw -g clock-mode-colour BLUE
set -g detach-on-destroy off
set -g allow-passthrough on
set -ga update-environment TERM
set -ga update-environment TERM_PROGRAM
set-option -g focus-events on
set -g popup-style 'bg=default,fg=BRIGHTWHITE'
set -g popup-border-style 'fg=BLUE,bg=default'
set -g popup-border-lines rounded

set-option -g set-titles on
set-option -g set-titles-string "#{pane_title}"
# set -ga terminal-overrides ",xterm-ghostty:RGB"
# set -g default-terminal "tmux-256color"
setw -g aggressive-resize on
# set -g default-terminal "$TERM"
# set -ag terminal-overrides ",$TERM:Tc"
