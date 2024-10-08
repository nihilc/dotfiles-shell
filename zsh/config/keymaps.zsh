#!/bin/zsh

bindkey "^P" history-beginning-search-backward
bindkey "^N" history-beginning-search-forward

# Enable vim mode
bindkey -v
bindkey -M viins '^?' backward-delete-char
# Use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
