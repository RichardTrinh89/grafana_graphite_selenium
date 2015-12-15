#!/bin/bash

# Calls Docker-Compoase to standup Selenium grid
# Also calls a script turn the host windows machine into a node as well
# with internet explorer

echo "Starting up selenium hub and nodes..."
docker-compose up -d

./internet_explorer_node.sh

echo "Selenium Hub and Nodes Sucessfully statrted..."

echo
echo "Copying hosts file to the VM hosts file..."
./copy_hosts_to_vm.sh

# Run the get_ports.sh script as well to let the use know what port to VNC to
echo
echo Node Ports:
./get_ports.sh
