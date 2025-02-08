

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# History in cache directory:
HISTFILE=.zhistfile
HISTSIZE=10000
SAVEHIST=$HISTSIZE
setopt appendhistory

HISTFILE=".zsh_history"
autoload -Uz compinit promptinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
setopt auto_cd

# startx
if [ "$(tty)" = "/dev/tty1" ]
then
    pgrep bspwm || startx
fi


eval "$(starship init zsh)"
export PATH="$PATH:$HOME/.local/bin"