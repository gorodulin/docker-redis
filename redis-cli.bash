#!/bin/bash

source "${BASH_SOURCE%/*}/config"

if [ ! "$(docker ps -q -f name=$REDIS_CONTAINER_NAME)" ]; then
  echo "Container $REDIS_CONTAINER_NAME is not running"
  exit 0
fi

# Run redis-cli

exe docker exec -it $REDIS_CONTAINER_NAME redis-cli
