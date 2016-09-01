################################################################################
##                                    DESIGN                                  ##
################################################################################

## MY COLORS:
## ---------------------------
## black:  colour232
## white:  colour255
## dark-gray:  colour234
## ligt-gray: colour7
## highlights: colour14
## attention: colour202
## decoration: colour12



## GLOBAL ######################################################################

## Colors
set -g default-terminal "screen-256color"

## Loud or quiet?
set-option -g visual-activity off  # Do not notify for events on panes
set-option -g visual-bell on
set-option -g visual-silence off
set-window-option -g monitor-activity on
set-option -g bell-action none



## WINDOWS #####################################################################

## Window selection menu (usually bound to cb-w)
setw -g mode-bg colour14
setw -g mode-fg colour232



## PANES #######################################################################

## Separation border
set -g pane-border-bg colour12
set -g pane-border-fg colour255
set -g pane-active-border-bg colour255
set -g pane-active-border-fg colour255


## Highlight current pane
set -g window-active-style 'fg=colour255,bg=colour232'  # Current pane
set -g window-style 'fg=colour7,bg=colour234'   # Other panes



## STATUS BAR ##################################################################

## Status bar design
set -g status-justify left
set -g status-interval 2
set -g status-position bottom
set -g status-bg colour234
set -g status-fg colour255


## Show PREFIX on right side when c-b
set -g status-left '#[fg=colour232,bg=colour202,bold]#{?client_prefix, <Prefix> ,}#[fg=colour255,bg=colour234,bold][#S] '
set -g status-left-length 20


## Show prefix on left & date & time
set -g status-right '#[fg=colour255,bg=colour234,bold] %d/%m/%y #[fg=colour255,bg=colour234,bold] %H:%M:%S #[fg=colour232,bg=colour202,bold]#{?client_prefix, <Prefix> ,}'
set -g status-right-length 50

## Show system load and other info
#set-option -g status-right '#(uptime | rev | cut -d":" -f1 | rev | sed s/,//g )'


## Selected window
setw -g window-status-current-fg colour232
setw -g window-status-current-bg colour14
setw -g window-status-current-attr bold
setw -g window-status-current-format ' #I:#W#F '


## Background windows
setw -g window-status-fg colour232
setw -g window-status-bg colour7
setw -g window-status-attr bold
setw -g window-status-format ' #I:#W#F '


## Background windows with event
setw -g window-status-bell-fg colour7
setw -g window-status-bell-bg colour7



## MESSAGES ####################################################################
set -g pane-border-fg colour232
set -g pane-active-border-fg colour14
set -g message-attr bold
set -g message-fg colour232
set -g message-bg colour14
set -g message-command-fg colour14
set -g message-command-bg colour232
