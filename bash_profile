export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH=/Users/koera/.gem/ruby/2.0.0/bin:$PATH
export PATH=$PATH:/usr/local/sbin
export PATH=/usr/local/bin:$PATH
alias ls='ls -GFh'
alias lsl='ls -GFhl'
alias lsa='ls -GFha'
alias cl='clear'
alias g='git'
alias cd..='cd ..'
HISTFILESIZE=1000000000
HISTSIZE=1000000
source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
