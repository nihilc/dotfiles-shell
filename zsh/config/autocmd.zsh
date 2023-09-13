#!/bin/zsh

# Start ssh-agent outside tmux in silent
if [ -z $TMUX ]
then
    pkill ssh-agent
    eval "$(ssh-agent -s)" > /dev/null 2>&1
fi
