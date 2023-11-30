#!/bin/zsh

function sourceConfigFile()
{
    file="$1"
    configPath="$HOME/.config/zsh/config"

    source "$configPath/$file"
}

sourceConfigFile function.zsh
sourceConfigFile env.zsh
sourceConfigFile alias.zsh
sourceConfigFile option.zsh
sourceConfigFile zinit.zsh
sourceConfigFile plugin.zsh
