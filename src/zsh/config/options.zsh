#!/bin/zsh

# Completion
zmodload -i zsh/complist
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' format '%F{02}==> %d <==%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '' 'r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' verbose true
zstyle ':completion:*' menu select
zstyle :compinstall filename "$ZDOTDIR/.zshrc"
autoload -Uz compinit
compinit

# Options
HISTFILE=~/.cache/zsh_history
HISTSIZE=1000
SAVEHIST=10000
setopt extendedglob nomatch notify globdots
unsetopt autocd beep
