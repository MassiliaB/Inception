#!/bin/sh

#Configure a mysql database
service mariadb start
echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD';" | mariadb
echo "FLUSH PRIVILEGES;" | mariadb
echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mariadb
#echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_ROOT'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" | mariadb
#echo "FLUSH PRIVILEGES;" | mariadb