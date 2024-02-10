#!/bin/zsh

alias zshrc-source="source $ZDOTDIR/.zshrc"

# alias ls="ls -Fv --color --group-directories-first"
alias ls="lsd -Fv --color=always --group-directories-first"
alias la="ls -A"
alias lls="ls -l"
alias lla="ls -lA"

alias tree="tree -C --dirsfirst"

alias bat="batcat"

# Fix paths
alias wget="wget --hsts-file=$XDG_DATA_HOME/wget-hsts"
