Kafka 2
===============

## Tags

* 2.10-0.8.2.2
* 2.11-0.10.1.0
* 2.11-0.10.1.1

## Starting the Container

     docker run \
     -p 9092:9092 \
     -v /opt/kafka/config/server.properties:/opt/kafka/config/server.properties \
     -v /opt/kafka/data:/tmp/kafka-logs \
     garland/kafka:2.11-0.10.1.1

## Docker compose
There is a docker-compose file that will startup a zookeeper container and then
the Kafka container.

    docker-compose up
