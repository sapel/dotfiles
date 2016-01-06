alias mkdir="mkdir -p"
alias ..="cd .."
alias ll="ls -lha"
alias ls="ls -FG"
alias gittoday="git log --author=\"apel\"| grep -e \"`date | cut -c 1-10`\" -C2 | grep JDM"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export PATH=/usr/local/mysql/bin:/Library/PostgreSQL/9.3/bin:/opt/local/bin:/opt/local/sbin:$PATH

# Git Bash Completion
source "$HOME/.git_completion.bash"
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1

# Prompt
#export PS1='\e[0;35m\u@\h\e[m \e[0;34m\w$(__git_ps1):\e[m\r\n'
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

#Python
export PYTHONPATH=$HOME/lib/python
export PATH=$PATH:$HOME/bin

shopt -s histappend
export PROMPT_COMMAND='history -s'
# Store 10000 commands in bash history
export HISTFILESIZE=100000
export HISTSIZE=100000
# Don't put duplicate lines in the history
export HISTCONTROL=ignoredups

#Apelcraft hosts
alias stage='ssh deploy@162.243.50.74'
