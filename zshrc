export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
SABLE_AUTO_TITLE="true"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git bundler osx rake ruby docker web-search catimg wd golang copydir)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/Users/xxy/.vimpkg/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias ll='ls -al'
alias emacs='/usr/local/Cellar/emacs/HEAD/bin/emacs -nw'
alias e='emacs -nw'
alias tailf='tail -f'
alias gck="git checkout"
alias gci="git commit"
alias gb=$GOPATH/bin/gb

#emacs 键位设定
bindkey -e

export TERM=xterm-256color
