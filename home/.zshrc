# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fox"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git laravel composer debian z last-working-dir per-directory-history screen \
colored-man colorize history history-substring-search extract wd zsh-syntax-highlighting knife vagrant cp git-prompt systemadmin)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/opt/bin:/usr/x86_64-pc-linux-gnu/gcc-bin/4.6.3:/usr/games/bin:/usr/lib64/php5.5/bin/

alias gprb="git pull --rebase"
alias glp="git log -p"
alias gg="git grep"

alias koha='$HOME/koha koha'
alias kohasudo='$HOME/koha mpelletier'
alias record='ffmpeg -f x11grab -s 1920x1080 -r 3 -b 50k -i :0.0+3360 -vcodec libx264 /home/max/tmp/screencapture/`date +%F`.mkv'
alias sl='sl'
alias watson='watson -s dirty'

alias -g grp='| grep -si'
alias -s log="tail -f"

autoload -U compinit && compinit


source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

alias screen='screen -U'
