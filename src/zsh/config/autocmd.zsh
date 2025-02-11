#!/bin/zsh

# Try to connect to tmux session or start a new one
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  if [ -z "$(pgrep ssh-agent)" ]; then
    eval "$(ssh-agent)"
  fi
  tmux a || tmux
fi
