# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
export DEFAULT_USER="$(whoami)"

# Import dircolor when installed
if [ -f ${HOME}/term-config/dircolors-solarized ]; then
  eval `dircolors $HOME/term-config/dircolors-solarized/dircolors.256dark`
fi

# Import set of env vars
if [ -f ${HOME}/.env_vars ]; then
  source ${HOME}/.env_vars
fi

# Import functions
if [ -f ${HOME}/.zsh_functions ]; then
  source ${HOME}/.zsh_functions
fi

# Import aliases
if [ -f ${HOME}/.zsh_aliases ]; then
  source ${HOME}/.zsh_aliases
fi

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git kubectl)

source $ZSH/oh-my-zsh.sh
