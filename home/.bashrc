# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias gst='git status'
# Pour vous générer le CHANGELOG
alias gcl='echo  Last tag: `g tag | tail -n 1` && echo "`date +\"%d %B %Y\"`: Version " && git changelog `g tag | tail -n 1`..master'
# Pour vous faciliter le cherry-picking des commits
alias gcp='git cherry-pick'
# Pour voir la différence entre la branche master et develop
alias gcd='git cherry -v master develop | grep "+ "'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#GIT_PS1_SHOWDIRTYSTATE=1
#GIT_PS1_SHOWUNTRACKEDFILES=0
#GIT_PS1_SHOWSTASHSTATE=1
#GIT_PS1_SHOWUPSTREAM="verbose"
PS1='\D{%H:%M} \[\033[1;35m\]\w$(__git_ps1 " \[\033[1;34m\](%s)")\[\033[0m\]\$ '

function up()
{
    dir=""
    if [ -z "$1" ]; then
        dir=..
    elif [[ $1 =~ ^[0-9]+$ ]]; then
        x=0
        while [ $x -lt ${1:-1} ]; do
            dir=${dir}../
            x=$(($x+1))
        done
    else
        dir=${PWD%/$1/*}/$1
    fi
    cd "$dir";
}

function upstr()
{
    echo "$(up "$1" && pwd)";
}

# Aller dans un répertoire tout de suite après sa création
mkcd() {
        if [ $# != 1 ]; then
                echo "Usage: mkcd <dir>"
        else
                mkdir -p $1 && cd $1
        fi
}


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
