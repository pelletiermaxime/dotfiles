alias glp="git log -p"
alias gg="git grep"
alias gdw="git diff --word-diff"
alias gdi="git icdiff"

alias record='ffmpeg -f x11grab -s 1920x1080 -r 3 -b 50k -i :0.0+3360 -vcodec libx264 /home/max/tmp/screencapture/`date +%F`.mkv'

alias -g grp='| grep -si'
alias -s log="tail -f"

alias screen='screen -U'

alias gf='git flow'

alias ag='ag'
alias c7='php7.0 /usr/bin/composer'
alias artisan='php7.0 artisan'

alias behatrun='./vendor/bin/behat -p max'
alias pretty_json='python -mjson.tool | pygmentize -g'

# Pour vous générer le CHANGELOG
alias gcl='echo  Last tag: `g tag | tail -n 1` && echo "`date +\"%d %B %Y\"`: Version " && git changelog `g tag | tail -n 1`..master'
# Pour vous faciliter le cherry-picking des commits
alias gcp='git cherry-pick'
# Pour voir la différence entre la branche master et develop
alias gcd='git cherry -v master develop | grep "+ "'

