#!/bin/bash
echo "Starting database container.."
docker-compose up -d

while true; do
    read -p "Do you want to connect to the mysql server? (y/n) " yn
    case $yn in
        [Yy]* ) echo "Launching phpmyadmin..";
                open http://localhost:8081; 
                echo "Connecting to database server..";
                docker exec -it mysql-mysql-container /bin/sh;
                break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

