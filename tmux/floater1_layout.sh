#!/bin/bash
SESSION="floater1"

tmux has-session -t $SESSION 2>/dev/null
if [ $? != 0 ]; then
    tmux new-session -d -s $SESSION

    # Disable status bar
    tmux set-option -g status off

    # 1-left, 2-right layout
    tmux split-window -h -t $SESSION:0.0
    tmux resize-pane -t $SESSION:0.0 -x 1080  # adjust left pane width
    tmux split-window -v -t $SESSION:0.1
    tmux resize-pane -t $SESSION:0.1 -y 30     # adjust top-right height

    # Ctrl + arrow keys to move between panes
    tmux bind -n C-Left select-pane -L
    tmux bind -n C-Right select-pane -R
    tmux bind -n C-Up select-pane -U
    tmux bind -n C-Down select-pane -D
fi

tmux attach-session -t $SESSION


