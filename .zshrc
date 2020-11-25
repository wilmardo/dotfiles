# If you come from bash you might have to change your $PATH.
export PATH="/usr/local/go/bin:${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
export DEFAULT_USER="$(whoami)"

# Move history to non zsh_ prefix for easier gitignore
HISTFILE="$HOME/.zhistory"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# Setup velero: mkdir -p ~/.oh-my-zsh/custom/plugins/velero && velero completion zsh > ~/.oh-my-zsh/custom/plugins/velero/velero.plugin.zsh
plugins=(git kubectl helm velero)

source $ZSH/oh-my-zsh.sh

# Own custom shizzle

# Import set of env vars
if [ -f ${HOME}/.zsh_env_vars ]; then
  source ${HOME}/.zsh_env_vars
fi
# Import WSL overrides
if uname -r | grep -i -q Microsoft; then
  source ${HOME}/.zsh_wsl
fi

# Import functions
if [ -f ${HOME}/.zsh_functions ]; then
  source ${HOME}/.zsh_functions
fi

# Import aliases
if [ -f ${HOME}/.zsh_aliases ]; then
  source ${HOME}/.zsh_aliases
fi

# Start tmux
# Source: https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi
