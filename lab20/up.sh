#!/bin/bash 

docker-compose -f docker-compose.yml up -d
sleep 1

docker exec ftpclient /bin/bash -c "dhclient eth0; dhclient -r eth0; dhclient eth0"
docker exec ftpclient /bin/bash -c "ping -c 2 10.1.0.100"

