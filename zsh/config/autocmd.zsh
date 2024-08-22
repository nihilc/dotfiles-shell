#!/bin/zsh

# Try to connect to tmux session or start a new one
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux a || tmux
fi
