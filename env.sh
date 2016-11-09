#!/bin/zsh

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Owner
export USER_NAME="Cuthbert Guerrero"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# nvm
export NVM_DIR="/Users/cuthbertguerrero/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# aliases
alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 /usr/local/bin/nvim'
alias vim='NVIM_TUI_ENABLE_TRUE_COLOR=1 /usr/local/bin/nvim'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# python quick fix
# see: https://coderwall.com/p/-k_93g/mac-os-x-valueerror-unknown-locale-utf-8-in-python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
