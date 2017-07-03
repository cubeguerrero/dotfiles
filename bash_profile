export PATH="/usr/local/opt/openssl/bin:$PATH"
export CLICOLOR=1
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

## Include Mix Escripts to Path
if [ -d "$HOME/.asdf/installs/elixir/1.4.4/.mix/escripts" ] ; then
  PATH="$PATH:$HOME/.asdf/installs/elixir/1.4.4/.mix/escripts"
fi

## This allows you to bookmark your favorite places across the file system
# Define a variable containing a path and you will be able to cd into it regardless of the directory you're in
shopt -s cdable_vars
export dotfiles="$HOME/Projects/personal/dotfiles"
export blog="$HOME/Projects/personal/cubeguerrero.github.io"
export work_projects="$HOME/Projects/work"
export personal_projects="$HOME/Projects/personal"
export documents="$HOME/Documents"

# Aliases
alias startpg='pg_ctl start'

# bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Mac OS X: ValueError: unknown locale: UTF-8 in Python
# see: https://coderwall.com/p/-k_93g/mac-os-x-valueerror-unknown-locale-utf-8-in-python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Bash Git Prompt
# See: https://github.com/magicmonty/bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Solarized
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
