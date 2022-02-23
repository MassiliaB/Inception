#!/bin/sh

service php7.3-fpm start
#Configure a mysql database
service mysql start
echo "GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;" | mariadb
echo "FLUSH PRIVILEGES;" | mariadb
echo "CREATE DATABASE Wordpress;" | mariadb

service nginx start
