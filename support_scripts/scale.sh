#!/bin/bash

# Simple script to scale the number of Chrome for Firefox instances

docker-compose scale chrome=$1 firefox=$2


echo Node ports:
./get_ports.sh
