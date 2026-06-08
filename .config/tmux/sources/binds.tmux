# Rebinding the prefix key
unbind C-b
set -g prefix C-s
bind C-s send-prefix

# Keyboard Shortcuts
bind -n M-k select-pane -U
bind -n M-j select-pane -D
bind -n M-h select-pane -L
bind -n M-l select-pane -R
bind -n M-1 select-window -t 1
bind -n M-2 select-window -t 2
bind -n M-3 select-window -t 3
bind -n M-4 select-window -t 4
bind -n M-5 select-window -t 5
bind -n M-6 select-window -t 6
bind -n M-7 select-window -t 7
bind -n M-8 select-window -t 8
bind -n M-9 select-window -t 9
bind -n M-0 select-window -t 10
bind -n M-H previous-window
bind -n M-L next-window
bind -n M-K switch-client -p
bind -n M-J switch-client -n

bind -n M-t new-window
bind -n M-'-' split-window -v -c "#{pane_current_path}"
bind -n M-'\' split-window -h -c "#{pane_current_path}"
bind -n M-';' command-prompt
bind -n M-v copy-mode
bind -n M-S choose-tree
bind -n M-s choose-session
bind -n M-r source-file $HOME/.config/tmux/tmux.conf \; display "Config reloaded!"
bind -n M-w kill-pane
bind -n M-W kill-window
bind -n M-d detach
bind -n M-! break-pane
