#!/bin/bash

# Simple command to turn this window machine into a node as well and connect it to the selenium hub
# This script is also execute in run.sh

# Uses the DOCKER_HOST envrionment variable and uses that ip instead, added some cut commands to remove the tcp:// and :[port] crap
DOCKER_MACHINE_IP=$(echo $DOCKER_HOST | cut -d : -f 2 | cut -d '/' -f 3)

java -jar selenium-server-standalone-2.48.2.jar -role node -hub http://${DOCKER_MACHINE_IP}:4444/grid/register \
-browser "browserName=internet explorer, maxInstances=5" -Dwebdriver.ie.driver=C:\Drivers\\IEDriverServer.exe \
-browser "browserName=firefox, maxInstances=5" \
-browser "browserName=chrome, maxInstances=5" -Dwebdriver.chrome.driver=C:\Drivers\\chromedriver.exe &> /dev/null &
