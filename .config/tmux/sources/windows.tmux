# Nerdfont chars
# HALF_ROUND_OPEN="#(printf '\uE0B6')"
# HALF_ROUND_CLOSE="#(printf '\uE0B4')"
# TRIANGLE_OPEN="#(printf '\uE0B2')"
# TRIANGLE_CLOSE="#(printf '\uE0B0')"
# ARCH_LINUX_LOGO="#(printf '\uF303')"
TMUX_LOGO="#(printf '\uebc8')"
CLOCK_LOGO="#(printf '\uf017')"
# BAT0_ICON="#(printf '\uf240')"

# Windows
set-option -g base-index 1
set -g renumber-windows on
set-window-option -g mode-keys vi
set-option -g window-status-separator " "
set-option -g window-status-format "\
#[fg=WHITE]#I\
#[fg=WHITE]:\
#[fg=WHITE]#W\
"
set-option -g window-status-current-format "\
#[fg=BRIGHTWHITE]#I\
#[fg=BRIGHTMAGENTA]:\
#[fg=BRIGHTWHITE]#W\
"

# Panes
set-option -g pane-base-index 1
set -g pane-border-style fg=WHITE
set -g pane-active-border-style fg=BLUE

# Status Bar
set-option -g status-position bottom
set-option -g status-style bg=BLACK,fg=WHITE
set-option -g status-justify left
set -g status-interval 1
set-option -g status-left-length 100
set-option -g status-right-length 100
# set-option -g status-left "\
# #[bg=default,fg=YELLOW] ${TMUX_LOGO} #S\
# "
set-option -g status-left " "

set-option -g status-right "\
#[bg=default,fg=GREEN bold]${TMUX_LOGO} #S  \
#[bg=default,fg=BLUE bold]${CLOCK_LOGO} %H:%M \
"

set -g message-style "bg=default,fg=YELLOW"
