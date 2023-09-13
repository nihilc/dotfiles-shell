# Path
if [ -d $HOME/.local/bin ]
then
    export PATH="$PATH:$HOME/.local/bin"
fi
# XDG
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
# Env
export TERM=tmux-256color
export EDITOR=nvim
