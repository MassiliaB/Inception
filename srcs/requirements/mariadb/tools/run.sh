#!/bin/sh

#Configure a mysql database
service mysql start
echo "GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;" | mariadb
echo "FLUSH PRIVILEGES;" | mariadb
echo "CREATE DATABASE Wordpress;" | mariadb
