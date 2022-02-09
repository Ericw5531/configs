#
# ~/.bashrc
#

export PATH="$PATH:/bin:$HOME/bin"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias vim='nvim'

if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
	exec fish
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
