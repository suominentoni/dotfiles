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
alias gll='cl && g ll'
alias cd..='cd ..'
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=10000
#set INC_APPEND_HISTORY
source ~/.profile

## Completions
autoload -U compinit
compinit -C

## case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

#### Git prompt ####

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr 'M'
zstyle ':vcs_info:*' unstagedstr 'M'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats \
	'%F{5}[%F{2}%b%F{5}] %F{2}%c%F{3}%u%f'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
zstyle ':vcs_info:*' enable git
+vi-git-untracked() {
	if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
	[[ $(git ls-files --other --directory --exclude-standard | sed q | wc -l | tr -d ' ') == 1 ]] ; then
	hook_com[unstaged]+='%F{1}??%f'
fi
}

precmd () { vcs_info }
#PROMPT='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_}%f%# '
PROMPT='%F{3}%3~ ${vcs_info_msg_0_}%f> '

#### original prompt ####

##PS1=$'%{\e[0;31m%}[%{\e[0;36m%}%n%{\e[0;32m%}@%{\e[0;35m%}%m%{\e[0;34m%}:%{\e[0;33m%}%.%{\e[0;31m%}]%{\e[0;0m%}%# '

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
