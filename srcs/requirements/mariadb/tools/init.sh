#!/bin/sh
if [ ! -d "/run/mysqld" ]; then
echo "yooo"
    mkdir -p /run/mysqld
    chown -R mysql:mysql /run/mysqld
fi
echo "heyyy1"
# if [ ! -d "/var/lib/mysql/mysql" ]; then
echo "heyyy"
    chown -R mysql:mysql /var/lib/mysql
echo "heyyy0"
    mysql_install_db --datadir=/var/lib/mysql --user=mysql

echo "heyyy0.1"
mysql --user=mysql --bootstrap <<_EOF_
  USER mysql
  FLUSH PRIVILEGES;
  UPDATE mysql.user SET Password=PASSWORD('$MYSQL_ROOT_PASSWORD') WHERE User='root';
  DELETE FROM mysql.user WHERE User='';
  DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
  DROP DATABASE IF EXISTS test;
  DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
  FLUSH PRIVILEGES;

  CREATE DATABASE wordpress;
  CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PSSWD'; 
  GRANT ALL PRIVILEGES ON wordpress.* TO '$MYSQL_USER'@'localhost';
  FLUSH PRIVILEGES;
_EOF_
# fi
echo "heyyy2"

sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/mysql/my.cnf
echo "omg"

exec mysqld -umysql