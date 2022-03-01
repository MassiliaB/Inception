FROM debian:buster

RUN groupadd -r mysql && useradd -r -g mysql mysql

RUN apt-get update && apt-get install -y \
   apt-utils \
   mariadb-server \
   php php-fpm php-mysql

RUN rm -rf /var/lib/apt/lists/*; \
# purge and re-create /var/lib/mysql with appropriate ownership
	rm -rf /var/lib/mysql; \
	mkdir -p /var/lib/mysql /var/run/mysqld; \
	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; \
# ensure that /var/run/mysqld (used for socket and lock files) is writable regardless of the UID our mysqld instance ends up having at runtime
	chmod 777 /var/run/mysqld;

#COPY tools/setup.sql /docker-entrypoint-initdb.d/
COPY tools/init.sh .

CMD sh init.sh

EXPOSE 3306


CMD ["mysqld"]