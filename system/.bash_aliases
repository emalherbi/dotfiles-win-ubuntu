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
alias dcimg='sudo docker images'
alias dcps='sudo docker ps'
alias dcpsaq='sudo docker ps -a -q'
alias dcrm='sudo docker rm'
alias dcrmall='sudo docker rm $(sudo docker ps -a -q)'
alias dcrmi='sudo docker rmi'
alias dcrmiall='sudo docker rmi $(sudo docker images -q)'
alias dcstop='sudo docker stop'
alias dcstopall='sudo docker stop $(sudo docker ps -a -q)'
alias dcstart='sudo docker start'
alias dcstartall='sudo docker start $(sudo docker ps -a -q)'
alias dcup='sudo docker-compose up'
alias dcupd='sudo docker-compose up -d'
alias dcupdf='sudo docker-compose up -d --force-recreate'
alias dcupdbf='sudo docker-compose up -d --build --force-recreate'
alias dcupall='sudo docker-compose up -d db && sleep 5 && sudo docker-compose up -d phpmyadmin && sleep 5 && sudo docker-compose up -d php'

# svn
alias svnad='sudo svn add * --force'
alias svnco='sudo svn commit -m'
alias svnst='sudo svn status'
alias svnup='sudo svn update .'

# git
alias gitchp='git diff --summary | grep --color "mode change 100755 => 100644" | cut -d" " -f7- | xargs -d"\n" chmod +x'
alias gitchm='git diff --summary | grep --color "mode change 100644 => 100755" | cut -d" " -f7- | xargs -d"\n" chmod -x'

# net
alias netlist='nmcli c'
alias netdown='nmcli c down'
alias netup='nmcli c up'

kill_process_by_port()
{
  sudo kill -9 `sudo lsof -t -i:$1`
}

# export ANDROID_HOME=${HOME}/Android/Sdk
# export ANDROID_SDK_ROOT=${HOME}/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
# export JAVA_HOME='/usr/lib/jvm/java-8-openjdk-amd64'
# export SVN_EDITOR=vi
