FROM java:8-jre
COPY kafka_2.11-2.3.1.tgz .
RUN tar -xzf kafka_2.11-2.3.1.tgz -C /opt && mv /opt/kafka_2.11-2.3.1 /opt/kafka

ENV PATH /opt/kafka/bin:$PATH

RUN rm -rf kafka_2.11-2.3.1.tgz 

EXPOSE 9092

CMD  ["kafka-server-start.sh", "/opt/kafka/config/server.properties"]
