#!/bin/bash
if [  "$1" == stop ]; then
echo "Container of DB with id = $(docker stop $(docker ps -q)) was stopped"
if [ "$(docker ps -aq -f status=exited -f status=created)" ]; then
echo "Container of DB with id = $(docker rm $(docker ps -q -f status=exited -f status=created)) was removed"
fi
else
case $1 in 
oracle)
echo "Container of Oracle DB with id = $(docker run -d -p 49160:22 -p 49161:1521 -p 49162:8080 wnameless/oracle-xe-11g) had been created and is running";;
mysql) 
echo "Constainer of MySQL DB with id = $(docker run -d -t -p 3306:3306 -e MYSQL_ROOT_PASSWORD=rootpass mysql) had been created and is running";;
postgres)
echo "Container of postgres DB with id = $(docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres) had been created and is running";;
psql) 
echo "Container of postgres DB with id = $(docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres) had been created and is running";;
echo "Acces do postgres by bash $(docker run -it --rm --link some-postgres:postgres postgres psql -h postgres -U postgres)"
*)
echo "Actually you can choose Oracle or MySQL DB and run in container"
exit 1
esac
fi


