FROM debian:buster

RUN apt-get update && apt-get install -y \
    mariadb-server mariadb-client \
	&& rm -rf /var/lib/apt/lists/*

COPY tools/init.sh .

EXPOSE 3306

ENTRYPOINT sh init.sh