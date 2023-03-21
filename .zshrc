zmodload zsh/zprof

ZSH_THEME="ys" # set by `omz`
DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"

plugins=( schaufel raspi-finder inaudible)

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export LANG=en_US.UTF-8

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export PYTHONSTARTUP=$HOME/.pythonstartup

# Preferred editor for local and remote sessions
export VIMINIT=~/.vimrc
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

if [[ -e "${HOME}/.iterm2_shell_integration.zsh" ]]; then
  source "${HOME}/.iterm2_shell_integration.zsh"
fi

alias ls="exa"
alias df="duf"
alias bottom="btm"
alias ps="procs"
alias dig="dog"
alias ping="gping"

alias vim="nvim -u ~/.vimrc"
alias vidstabilize="python3 -m vidstab"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec

export AMPY_PORT=/dev/tty.usbmodem14201

export HOMEBREW_NO_AUTO_UPDATE=1 

export PATH=$PATH:"/usr/local/opt/coreutils/libexec/gnubin"
export PATH=$PATH:"/usr/local/opt/e2fsprogs/bin"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:"$HOME/.poetry/bin"
export PATH=$PATH:"$HOME/.local/bin"
export PATH=$PATH:"/usr/local/opt/python@3.10/bin"
export PATH=$PATH:"/usr/local/opt/sphinx-doc/bin"

#### nvm stuff
export NVM_DIR="$HOME/.nvm"

if [[ -s "$NVM_DIR/nvm.sh" ]]; then
  source "$NVM_DIR/nvm.sh"                    # This loads nvm
fi

if [[ -s "$NVM_DIR/bash_completion" ]]; then 
  source "$NVM_DIR/bash_completion"           # This loads nvm bash_completion
fi

