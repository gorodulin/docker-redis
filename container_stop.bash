#!/bin/bash

source "${BASH_SOURCE%/*}/config"

exe docker update --restart=no $REDIS_CONTAINER_NAME
exe docker stop $REDIS_CONTAINER_NAME
exe docker rm $REDIS_CONTAINER_NAME
