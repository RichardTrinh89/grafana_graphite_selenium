#!/bin/bash

# A simple script that returns the exposed port number for each
# Selenium node. Mainly using this information to do VNC connection with

for i in $(docker ps --format {{.Names}} | grep seleniumgrid);
do
	echo "$i: $(docker port $i)"
done
