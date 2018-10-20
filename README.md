# Kafka Manager Docker image

> This is my Kafka Manager Docker image; official repo: https://github.com/yahoo/kafka-manager

Kafka Manager is a tool for managing Apache Kafka ( https://kafka.apache.org/ )

## Try online

You can try that online! Click the below button:

[![Try in PWD](https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/giabar/gb-kafkamanager/master/docker-compose.yml)


## Requirements to build

* Docker CE 17.05

## Requirements to run

* Docker CE 17.xx

## How to Run

Simply run:

```
docker run -d -p 9000:9000 -e ZK_HOSTS=zookeeper1:2181,zookeeper2:2181,zookeeper3:2181 giabar/gb-kafkamanager
```
