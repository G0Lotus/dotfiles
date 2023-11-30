#!/bin/zsh

if builtin command -v zinit >/dev/null 2>&1; then
    zinit for \
        light-mode \
    zsh-users/zsh-autosuggestions \
        light-mode \
        pick"async.zsh" \
        src"pure.zsh" \
    sindresorhus/pure
fi
