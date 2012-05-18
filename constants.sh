#!/bin/zsh
# vim: set filetype=zsh

ZDOTDIR=~/.zsh

export BC_ENV_ARGS="--quiet --mathlib"

export HISTTIMEFORMAT="%t%d.%m.%y %H:%M:%S%t"
export HISTCONTROL="ignoredupes"
export HISTIGNORE="&:ls:[bf]g:exit: cd \"\`*: PROMPT_COMMAND=\'*:cd \'/*"
export PROMPT_COMMAND='history -a'

export LS_COLORS="di=01;34:fi=0:ln=01;36:pi=43:so=45:bd=46:cd=40:or=05;41:mi=05;41:ex=01;32"

export PATH="$PATH:/sbin:/usr/sbin:/usr/local/sbin:/usr/local/bin:$HOME/scripts:$HOME/bin"
[ -x /usr/bin/src-hilite-lesspipe.sh ] && export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '
[ -x /usr/bin/vim ] && export EDITOR=/usr/bin/vim

# type a directory's name to cd to it
compctl -/ cd

# tab completion for PID :D
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

HISTFILE=~/.zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

export LANG="ru_RU.UTF-8"
export LC_PAPER="ru_RU.UTF-8"
export LC_MEASUREMENT="ru_RU.UTF-8"
export LC_TIME="ru_RU.UTF-8" 
#export LC_ALL="en_US.UTF-8"

case $TERM in
	screen)
		export PROMPT_COMMAND='echo -n -e "\033k\033\\"'
	;;
esac
