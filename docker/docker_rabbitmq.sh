set -x
docker pull rabbitmq:management
docker run -dit --name rabbitmq_mg -e RABBITMQ_DEFAULT_USER=admin -e RABBITMQ_DEFAULT_PASS=Abcd1234 -p 15672:15672 -p 5672:5672 rabbitmq:management
