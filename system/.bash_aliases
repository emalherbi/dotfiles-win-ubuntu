# Linux
#
# general
alias ..='cd ..'
alias c='clear'
alias chr='sudo chmod -R 777'
alias chw="sudo chown -R $(id -un):"
alias home='cd ~'
alias l='ls -a'
alias ll='ls -l'
alias lll='ls -la'
alias rmrf='sudo rm -rf'
alias u='id -un'
alias ipcfg='ifconfig'

# wheater
alias wheater='curl "http://wttr.in/Pato_Branco"'

# projects
alias www='cd $HOME/www'

# docker
alias dcwww='cd $HOME/Sites/dockers'
alias dcimg='docker images'
alias dcps='docker ps'
alias dcpsaq='docker ps -a -q'
alias dcrm='docker rm'
alias dcrmall='docker rm $(docker ps -a -q)'
alias dcrmi='docker rmi'
alias dcrmiall='docker rmi $(docker images -q)'
alias dcstop='docker stop'
alias dcstopall='docker stop $(docker ps -a -q)'
alias dcstart='docker start'
alias dcstartall='docker start $(docker ps -a -q)'
alias dcup='docker-compose up'
alias dcupd='docker-compose up -d'
alias dcupdf='docker-compose up -d --force-recreate'
alias dcupdbf='docker-compose up -d --build --force-recreate'
alias dcupall='docker-compose up -d db && sleep 5 && docker-compose up -d phpmyadmin && sleep 5 && docker-compose up -d php'

# svn
alias svnad='sudo svn add * --force'
alias svnco='sudo svn commit -m'
alias svnst='sudo svn status'
alias svnup='sudo svn update .'

# git
alias gitchp='git diff --summary | grep --color "mode change 100755 => 100644" | cut -d" " -f7- | xargs -d"\n" chmod +x'
alias gitchm='git diff --summary | grep --color "mode change 100644 => 100755" | cut -d" " -f7- | xargs -d"\n" chmod -x'

kill_process_by_port()
{
  sudo kill -9 `sudo lsof -t -i:$1`
}
