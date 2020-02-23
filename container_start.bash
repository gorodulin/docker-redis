#!/bin/bash

source "${BASH_SOURCE%/*}/config"

exe mkdir -p $REDIS_DATA_VOLUME_PATH
exe chmod 777 $REDIS_DATA_VOLUME_PATH

# Run container

exe docker run \
  --restart always \
  --detach \
  --name=$REDIS_CONTAINER_NAME \
  --hostname=$REDIS_CONTAINER_HOSTNAME \
  --network=$NETWORK_NAME \
  --volume=$REDIS_DATA_VOLUME_PATH:/shared/redis_data \
  --volume=$REDIS_CONF_VOLUME_PATH:/etc/redis/redis.conf \
  redis:$REDIS_VERSION redis-server /etc/redis/redis.conf


