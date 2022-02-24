FROM debian:bullseye

RUN apt-get update && apt-get install -y \
   apt-utils \
   mariadb-server

RUN rm -rf /var/lib/apt/lists/*; \
# purge and re-create /var/lib/mysql with appropriate ownership
	rm -rf /var/lib/mysql; \
	mkdir -p /var/lib/mysql /var/run/mysqld; \
	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; \
# ensure that /var/run/mysqld (used for socket and lock files) is writable regardless of the UID our mysqld instance ends up having at runtime
	chmod 777 /var/run/mysqld;

#COPY tools/setup.sql /docker-entrypoint-initdb.d/
COPY tools/init.sh .

EXPOSE 3306

CMD ["bash", "init.sh"]

CMD ["mariadbd"]