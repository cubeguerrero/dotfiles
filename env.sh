#!/bin/zsh

# zsh completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Gruvbox
source "$HOME/.config/nvim/plugged/gruvbox/gruvbox_256palette.sh"

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

# nvm
export NVM_DIR="/Users/cuthbertguerrero/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#yarn
export PATH="$PATH:`yarn global bin`"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag -g ""'

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
export RUBY_EXTRA_CONFIGURE_OPTIONS='--with-openssl-dir=`brew --prefix openssl`'

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# python quick fix
# see: https://coderwall.com/p/-k_93g/mac-os-x-valueerror-unknown-locale-utf-8-in-python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# run pyenv-virtualenvwrapper
eval "pyenv virtualenvwrapper"
