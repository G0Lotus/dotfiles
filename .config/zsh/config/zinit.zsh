#!/bin/zsh

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.hscsec.cn/zdharma-continuum/zinit.git "$ZINIT_HOME"

# typeset -A ZINIT=(
#     BIN_DIR  $HOME/.config/zsh/zinit/bin
#     HOME_DIR $HOME/.config/zsh/zinit
#     COMPINIT_OPTS -C
# )

source "${ZINIT_HOME}/zinit.zsh"
