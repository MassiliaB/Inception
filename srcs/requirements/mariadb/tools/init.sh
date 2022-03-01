#!/bin/sh

#Configure a mysql database
service mysql start
echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql
echo "FLUSH PRIVILEGES;" | mysql
echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql
#echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_ROOT'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" | mysql
#echo "FLUSH PRIVILEGES;" | mysql