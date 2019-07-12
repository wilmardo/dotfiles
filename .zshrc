# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
eval `dircolors $HOME/term-config/dircolors-solarized/dircolors.256dark`
export DEFAULT_USER="$(whoami)"
export DOCKER_HOST=tcp://127.0.0.1:2375

# Ansible settings
export ANSIBLE_HOST_KEY_CHECKING=False
export ANSIBLE_STDOUT_CALLBACK=yaml
export ANSIBLE_SSH_CONTROL_PATH_DIR=/dev/shm

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vi ~/.zshrc"
alias k="kubectl"
alias ka="kubectl apply"
alias kaf="kubectl apply -f"
alias kga="kubectl get --all-namespaces"
alias kgap="kubectl get --all-namespaces pods"
alias kg="kubectl get -n"
alias kd="kubectl describe -n"
alias kl="kubectl logs -n"
alias kdel="kubectl delete -n"
alias kdelf="kubectl delete -f"
alias ke="kubectl exec -it -n"
alias gck="git checkout"
alias gc="git commit"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gs="git status"
alias ga="git add"
alias gf="git fetch"
alias gpl="git pull"
alias gp="git push"
alias gpf="git push --force"
alias gst="git stash"
alias gstp="git stash pop"
alias gco="git config user.email 'info@wilmardenouden.nl' && git config user.name 'wilmardo'"
alias mkvenv="python3 -m venv venv && source venv/bin/activate"
alias svenv="source venv/bin/activate"
alias c="code ."
alias d="docker"
alias dp="docker pull"
alias dps="docker ps"
alias dr="docker run -it"
alias db="docker build"
alias a="docker run -it -v $(pwd):/$(basename ~+) -w /$(basename ~+) -e MOLECULE_EPHEMERAL_DIRECTORY=/$(basename ~+)/molecule/default/.molecule docker-registry.intermax.nl/awx/ansible-base:latest ansible"
alias ap="docker run -it -v $(pwd):/$(basename ~+) -w /$(basename ~+) -e MOLECULE_EPHEMERAL_DIRECTORY=/$(basename ~+)/molecule/default/.molecule docker-registry.intermax.nl/awx/ansible-base:latest ansible-playbook"
alias config='/usr/bin/git --git-dir=/c/Users/wilmaro/.cfg/ --work-tree=/c/Users/wilmaro'
