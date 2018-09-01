# Kafka Manager Docker image

> This is my Kafka Manager Docker image; official repo: https://github.com/yahoo/kafka-manager

Kafka Manager is a tool for managing Apache Kafka ( https://kafka.apache.org/ )

## Requirements to build

* Docker CE 17.05

## Requirements to run

* Docker CE 17.xx

## How to Run

Simply run:

```
docker run -d -p 9000:9000 -e ZK_HOSTS=zookeeper1:2181,zookeeper2:2181,zookeeper3:2181 giabar/gb-kafkamanager
```
