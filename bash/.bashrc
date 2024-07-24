#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias p='python'
PS1='[\u@\h \W]\$ '
# eval "$(starship init bash)"

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

DOCKER_COMPLETION_SHOW_CONTAINER_IDS=yes
source /etc/bash_completion.d/docker
