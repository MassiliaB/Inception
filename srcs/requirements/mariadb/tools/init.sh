#!/bin/sh

# service mysql start
if [ ! -d "/run/mysqld" ]; then
    mkdir -p /run/mysqld
    chown -R mysql:mysql /run/mysqld
fi
if [ ! -d "/var/lib/mysql/mysql" ]; then
    chown -R mysql:mysql /var/lib/mysql
    mysql_install_db --datadir=/var/lib/mysql --user=mysql

    mysqld --user=mysql --bootstrap <<_EOF_
  DELETE FROM mysql.user WHERE User='';
  DROP DATABASE IF EXISTS test;
  DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
  DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
  ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PSSWD';
  CREATE DATABASE wordpress;
  CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PSSWD'; 
  GRANT ALL PRIVILEGES ON wordpress.* TO '$MYSQL_USER'@'%';
  FLUSH PRIVILEGES;
_EOF_
fi
#   USE mysql;
#   FLUSH PRIVILEGES;

rm /etc/mysql/my.cnf && touch /etc/mysql/my.cnf
echo "[mysqld]" >> /etc/mysql/my.cnf 
echo "bind-address=0.0.0.0" >> /etc/mysql/my.cnf

exec mysqld --user=mysql
#   echo "CREATE DATABASE wordpress;" | mysql
#   echo "GRANT ALL ON wordpress.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PSSWD' WITH GRANT OPTION;" | mysql
#   echo "FLUSH PRIVILEGES;" | mysql
#   echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MYSQL_ROOT_PSSWD');" | mysql 