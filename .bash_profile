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
alias magmed='ssh root@192.241.213.40'

#Ritani hosts
#alias stage='ssh deploy@ec2-50-112-103-207.us-west-2.compute.amazonaws.com'
#alias stage-sidekiq='ssh deploy@ec2-54-245-128-208.us-west-2.compute.amazonaws.com'
#alias stage-db='ssh deploy@ec2-54-245-7-80.us-west-2.compute.amazonaws.com'
#alias stage-reports='ssh deploy@ec2-50-112-65-250.us-west-2.compute.amazonaws.com'
#alias stage-search='ssh deploy@ec2-50-112-31-9.us-west-2.compute.amazonaws.com'
#alias stage2='ssh deploy@ec2-54-245-110-178.us-west-2.compute.amazonaws.com'
#alias prod1='ssh deploy@ec2-50-112-107-180.us-west-2.compute.amazonaws.com'
#alias prod2='ssh deploy@ec2-50-112-55-193.us-west-2.compute.amazonaws.com'
#alias prod-sidekiq='ssh deploy@ec2-50-112-21-74.us-west-2.compute.amazonaws.com'

