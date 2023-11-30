#!/bin/zsh

_exportDir "XDG_DATA_HOME"   "$HOME/.local/share"
_exportDir "XDG_STATE_HOME"  "$HOME/.local/state"
_exportDir "XDG_CACHE_HOME"  "$HOME/.cache"
_exportDir "XDG_CONFIG_HOME" "$HOME/.config"
_exportDir "GNUPGHOME"       "$XDG_DATA_HOME/gnupg"

_exportFile "HISTFILE"               "$XDG_STATE_HOME/zsh/history"
_exportFile "NPM_CONFIG_USERCONFIG"  "$XDG_CONFIG_HOME/npm/npmrc"

export HISTSIZE=10000
export SAVEHIST=10000
export EDITOR="nvim"
export TERM="xterm-256color"
