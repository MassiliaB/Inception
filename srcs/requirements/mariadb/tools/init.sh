#!/bin/sh

if [ ! -d "/run/mysqld" ]; then
  mkdir -p /run/mysqld
  chown -R mysql:mysql /run/mysqld
fi
if [ ! -d "/var/lib/mysql/mysql" ]; then
  chown -R mysql:mysql /var/lib/mysql
  mysql_install_db --datadir=/var/lib/mysql --user=mysql

  service mysql start
  echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql
  echo "GRANT ALL ON wordpress.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;" | mysql
  echo "FLUSH PRIVILEGES;" | mysql
  echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MYSQL_ROOT_PASSWORD');" | mysql 
  service mysql stop
fi

rm /etc/mysql/my.cnf && touch /etc/mysql/my.cnf
echo "[mysqld]" >> /etc/mysql/my.cnf 
echo "bind-address=0.0.0.0" >> /etc/mysql/my.cnf

mysqld --user=mysql --console