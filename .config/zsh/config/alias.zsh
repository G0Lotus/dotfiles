#!/bin/zsh

alias ez='exec zsh'

if builtin command -v eza >/dev/null 2>&1; then
    alias ls='eza --icons --group-directories-first'
    alias ll='ls -1'
    alias la='ll -a'
    alias lt='ll --tree'
    alias lll='ls -l'
    alias lla='lll -a'
    alias llt='lll --tree'
else
    alias ls='ls --colors'
    alias ll='ls -l'
    alias la='ll -a'
fi

if builtin command -v nvim >/dev/null 2>&1; then
    alias vim='nvim'
fi
