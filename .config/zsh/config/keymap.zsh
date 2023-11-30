#!/bin/zsh

bindkey "^K"    kill-whole-line
bindkey "^A"    beginning-of-line
bindkey "^E"    end-of-line

bindkey "^R"    history-incremental-search-backward
bindkey "[B"    history-search-forward
bindkey "[A"    history-search-backward

bindkey "^D"    delete-char
bindkey "^F"    forward-char
bindkey "^B"    backward-char
