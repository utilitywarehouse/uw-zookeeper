FROM registry.uw.systems/base_images/uw-alpine-java:v8

RUN mkdir -p /opt/zookeeper
WORKDIR /opt/zookeeper

RUN apk add --no-cache wget ca-certificates bash
RUN wget http://www.apache.org/dist/zookeeper/zookeeper-3.4.9/zookeeper-3.4.9.tar.gz
RUN tar -zxvf zookeeper-3.4.9.tar.gz --strip 1
RUN rm zookeeper-3.4.9.tar.gz

WORKDIR /opt/zookeeper/bin

CMD ["./zkServer.sh", "start-foreground"]
