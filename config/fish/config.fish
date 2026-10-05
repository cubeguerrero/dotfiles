# The following lines were added by Docker Desktop to add commands to your PATH.
export PATH="$PATH:/Users/cguerrero/.docker/bin"
# End of Docker Desktop section.

if status is-interactive
    # Commands to run in interactive sessions can go here

    # Convenient Zellij aliases
    alias zj="zellij"
    alias za="zellij attach"
    alias zls="zellij list-sessions"
    alias zk="zellij kill-session"
    alias zka="zellij kill-all-sessions"

    # Auto-attach to or create a persistent 'main' session in Ghostty
    if test "$TERM_PROGRAM" = "ghostty" -a -z "$ZELLIJ" -a -z "$NO_ZELLIJ"
        exec zellij attach -c main
    end
end

function __check_tmux_alias_fzf
    if set -q TMUX
        alias fzf='fzf-tmux'
    else
        alias fzf='fzf'
    end
end

# rustup
source "$HOME/.cargo/env.fish" # For fish

__check_tmux_alias_fzf
alias k="kubectl"

fish_config theme choose catppuccin-mocha --color-theme=dark

# Added by Antigravity IDE
fish_add_path /Users/cguerrero/.antigravity-ide/antigravity-ide/bin
