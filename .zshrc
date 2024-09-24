if [ "$TMUX" = "" ]; then tmux; fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

source $HOME/dotfiles/deps/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $ZSH/oh-my-zsh.sh

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
