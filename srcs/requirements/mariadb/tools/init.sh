#!/bin/sh

#Configure a mysql database
service mysql start
if [ -f /root/.my.cnf ]; then

    echo "CREATE DATABASE wordpress /*\!40100 DEFAULT CHARACTER SET utf8 */;" | mysql
    echo "CREATE USER ${MYSQL_USER}@localhost IDENTIFIED BY '${MYSQL_PASSWORD}';" | mysql
    echo "GRANT ALL PRIVILEGES ON ${MYSQL_USER}.* TO '${MYSQL_USER}'@'localhost';" | mysql
    echo "FLUSH PRIVILEGES;" | mysql

# If /root/.my.cnf doesn't exist then it'll ask for root password   
else
    echo "CREATE DATABASE db /*\!40100 DEFAULT CHARACTER SET utf8 */;" | mysql
    echo "CREATE USER db@localhost IDENTIFIED BY 'db';" | mysql
    echo "GRANT ALL PRIVILEGES ON db.* TO 'db'@'localhost';" | mysql
    echo "FLUSH PRIVILEGES;" | mysql
fi

