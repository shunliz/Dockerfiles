#!/bin/bash -x

KAFKA_CFG="/opt/kafka/config/server.properties"

# Check if the config file exist before starting
while [ ! -f ${KAFKA_CFG} ]
do
  echo "The ${KAFKA_CFG} does not exist.  Waiting..."
  sleep 5
done

#
# Starting Kafka
#
exec /opt/kafka/bin/kafka-server-start.sh ${KAFKA_CFG}
