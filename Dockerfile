FROM giabar/gb-sbt
ADD https://github.com/yahoo/kafka-manager/archive/1.3.3.18.tar.gz /
RUN tar zxvf 1.3.3.18.tar.gz &&\
    rm -f 1.3.3.18.tar.gz &&\
    mv kafka-manager-1.3.3.18 kafkamanager
WORKDIR /kafkamanager
RUN sbt clean dist

FROM openjdk:8-jdk-alpine
WORKDIR /tmp
COPY --from=0 /kafkamanager/target/universal/kafka-manager-1.3.3.18.zip .
RUN unzip kafka-manager-1.3.3.18.zip &&\
    mv kafka-manager-1.3.3.18 kafka-manager &&\
    rm -f /tmp/kafka-manager-1.3.3.18.zip &&\
    mv /tmp/kafka-manager /
CMD ["/kafka-manager/bin/kafka-manager"]
EXPOSE 9000
