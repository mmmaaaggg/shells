docker image prune -a -f
docker container prune -f
docker rmi  `docker images | grep none | awk '{print $3}'`
