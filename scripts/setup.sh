#!/bin/bash

# Wait for MariaDB to start
sleep 10

# Connect to MariaDB and set up Cacti database
docker exec -it cacti-mariadb mysql -u root -p'root_password' -e "\
CREATE DATABASE IF NOT EXISTS cacti; \
GRANT ALL PRIVILEGES ON cacti.* TO 'cactiuser'@'%' IDENTIFIED BY 'cactiuser_password'; \
FLUSH PRIVILEGES;"
