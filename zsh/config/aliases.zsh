#!/bin/zsh

alias zshrc-source="source $ZDOTDIR/.zshrc"

alias ls="ls -Fvh --color --group-directories-first"
# alias ls="lsd -Fvh --color=always --group-directories-first"
alias la="ls -A"
alias lls="ls -l"
alias lla="ls -lA"

alias tree="tree -C --dirsfirst"
alias rm="rm -i"

alias bat="batcat"

# Fix paths
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
