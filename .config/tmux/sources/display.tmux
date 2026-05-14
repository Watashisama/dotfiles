# Display
set-option -g set-titles on
set-option -g set-titles-string "#{pane_title}"
# set -ga terminal-overrides ",xterm-ghostty:RGB"
set -g default-terminal "tmux-256color"
setw -g aggressive-resize on
# set -g default-terminal "$TERM"
set -ag terminal-overrides ",$TERM:Tc"


