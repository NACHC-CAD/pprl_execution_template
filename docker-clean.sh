docker ps -aq | xargs docker stop | xargs docker rm
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker volume prune -f
docker rmi $(docker images -q)