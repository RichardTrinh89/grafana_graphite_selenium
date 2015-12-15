#!/bin/bash

# Stops selenium grid and removes all of its associated containers
# Also removes standlone nodes that were brought up manually, if any

docker-compose stop
docker-compose rm -f

# kill the internet explorer node if any
kill $(ps aux | grep java | awk '{print $1}') &> /dev/null &
