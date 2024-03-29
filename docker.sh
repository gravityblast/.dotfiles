alias docker-stop-all="docker ps -q | xargs docker stop"
alias docker-rm-all="docker ps -a -q | xargs docker rm -vf"
alias docker-kill-all="docker ps -a -q | xargs docker kill"
alias docker-kr-all="docker-kill-all; docker-rm-all"
alias docker-sr-all="docker-stop-all; docker-rm-all"
alias docker-rmi-none="docker images | grep none | awk '{print $3}' | xargs docker rmi"
alias docker-prune-all="docker system prune -a -f --volumes"
