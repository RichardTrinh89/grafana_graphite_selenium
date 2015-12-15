#!/bin/bash

# Simple command to turn this window machine into a node as well and connect it to the selenium hub
# This script is also execute in run.sh

# Assumes that 'default' is the VM name, edit to to fit yours
DOCKER_MACHINE_IP=$(docker-machine ip default)

java -jar selenium-server-standalone-2.48.2.jar -role node -hub http://${DOCKER_MACHINE_IP}:4444/grid/register \
-browser "browserName=internet explorer, maxInstances=5" \
-browser "browserName=firefox, maxInstances=5" \
-browser "browserName=chrome, maxInstances=5" &> /dev/null &
