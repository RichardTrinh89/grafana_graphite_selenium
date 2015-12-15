#!/bin/bash

# This appends the OnPar hosts file onto all the selenium nodes
# at /etc/hosts

for i in $(docker ps --format {{.Names}} | grep seleniumgrid)
do
	docker cp /etc/hosts $i:/onparhosts
	docker exec -i $i sh -c 'cat /onparhosts >> /etc/hosts'
done

