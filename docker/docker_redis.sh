set -x
docker pull redis
docker run -itd --name redis_6379 -p 6379:6379 redis
