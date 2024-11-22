# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Move history to non zsh_ prefix for easier gitignore
HISTFILE="$HOME/.zhistory"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# Setup velero: mkdir -p ~/.oh-my-zsh/custom/plugins/velero && velero completion zsh > ~/.oh-my-zsh/custom/plugins/velero/velero.plugin.zsh
# kube-ps1: brew install kube-ps1
plugins=(
  git
  kubectl
  kube-ps1
  helm
  fluxcd
  velero
)

source $HOME/fzf-tab-completion/zsh/fzf-zsh-completion.sh
bindkey '^I' fzf_completion

source $ZSH/oh-my-zsh.sh

# Own custom shizzle

# Import set of env vars
if [ -f ${HOME}/.zsh_env_vars ]; then
  source ${HOME}/.zsh_env_vars
fi

# Import functions
if [ -f ${HOME}/.zsh_functions ]; then
  source ${HOME}/.zsh_functions
fi

# Import aliases
if [ -f ${HOME}/.zsh_aliases ]; then
  source ${HOME}/.zsh_aliases
fi

# Import WSL overrides
if uname -r | grep -i -q Microsoft; then
  source ${HOME}/.zsh_wsl
fi

# Import OSX overrides
if uname | grep -i -q Darwin; then
  source ${HOME}/.zsh_osx
fi

# remove username@hostname prefix from prompt
prompt_context() {}
# kube-ps1 clustername
RPROMPT='$(kube_ps1)'

# Setup global gitignore
git config --global core.excludesfile '~/.global-gitignore'

# Unlimited history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
setopt SHARE_HISTORY

# Start tmux
# Source: https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ] && [ ! "$TERM_PROGRAM" = "vscode" ]; then
  exec tmux new-session -A -s main
fi

source /Users/wilmardo/.docker/init-zsh.sh || true # Added by Docker Desktop
