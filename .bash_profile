alias mkdir="mkdir -p"
alias ..="cd .."
alias ll="ls -al"
alias ls="ls -FG"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
export PATH=/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH

# Git Bash Completion
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Prompt
#export PS1='\e[0;35m\u@\h\e[m \e[0;34m\w$(__git_ps1):\e[m\r\n'
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#PS1='\[\e[1;32m\][\h:\W$(__git_ps1 " (%s)")]\$\[\e[0m\] '

shopt -s histappend
export PROMPT_COMMAND='history -s'
# Store 10000 commands in bash history
export HISTFILESIZE=100000
export HISTSIZE=100000
# Don't put duplicate lines in the history
export HISTCONTROL=ignoredups

# Python
export PYTHONPATH=$HOME/lib/python
export PATH=$PATH:$HOME/bin

alias stage='ssh deploy@ec2-50-112-103-207.us-west-2.compute.amazonaws.com'
alias stage-sidekiq='ssh deploy@ec2-50-112-231-145.us-west-2.compute.amazonaws.com'
alias stage-db='ssh deploy@ec2-54-245-7-80.us-west-2.compute.amazonaws.com'
alias stage-reports='ssh deploy@ec2-50-112-65-250.us-west-2.compute.amazonaws.com'
alias stage-search='ssh deploy@ec2-50-112-31-9.us-west-2.compute.amazonaws.com'
alias jenkins='ssh deploy@ec2-50-112-116-23.us-west-2.compute.amazonaws.com'

alias prod1='ssh deploy@ec2-50-112-107-180.us-west-2.compute.amazonaws.com'
alias prod2='ssh deploy@ec2-50-112-55-193.us-west-2.compute.amazonaws.com'
alias prod-sidekiq='ssh deploy@ec2-50-112-21-74.us-west-2.compute.amazonaws.com'

jiralink() {
  if [ -z $1 ]; then
    echo "Usage: jiralink [start_revision] [end_revision]"
    return 1
  else
    git log ${1}..${2} | grep -oh "\w*JDM-\w*" | uniq | tr '\n' ',' | sed 's/JDM/"JDM/g' | sed 's/,/"+OR+key%3D/g' | sed s/+OR\+key\%3D$// | xargs echo 'https://newecx.atlassian.net/secure/IssueNavigator!executeAdvanced.jspa?reset=true&jqlQuery=key%3D'
  fi
}

