#!/bin/bash

source "${BASH_SOURCE%/*}/config"

exe docker stop $REDIS_CONTAINER_NAME
