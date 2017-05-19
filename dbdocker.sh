#!/bin/bash
if [  "$1" == kill ]; then
echo "Container of Oracle DB with id = $(sudo docker stop $(sudo docker ps -q)) was stopped"
if [ "$(sudo docker ps -aq -f status=exited -f status=created)" ]; then
echo "Container of Oracle DB with id = $(sudo docker rm $(sudo docker ps -q -f status=exited -f status=created)) was removed"
fi
else
echo "Container of Oracle DB with id = $(sudo docker run -d -p 49160:22 -p 49161:1521 -p 49162:8080 wnameless/oracle-xe-11g) had been created and is running"
fi

