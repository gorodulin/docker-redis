#!/bin/bash

source "${BASH_SOURCE%/*}/config"

exe docker logs -f $REDIS_CONTAINER_NAME
