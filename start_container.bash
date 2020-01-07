#!/bin/bash

source "${BASH_SOURCE%/*}/config"

exe mkdir -p $REDIS_DATA_VOLUME_PATH
exe chmod 777 $REDIS_DATA_VOLUME_PATH

# Run container

exe docker run \
  --rm \
  --detach \
  --name=$REDIS_CONTAINER_NAME \
  --hostname=$REDIS_CONTAINER_HOSTNAME \
  --network=$NETWORK_NAME \
  --volume=$ROOTPATH/redis.conf:/etc/redis/redis.conf \
  redis:$REDIS_VERSION redis-server /etc/redis/redis.conf

#--volume=$REDIS_DATA_VOLUME_PATH:/data \

