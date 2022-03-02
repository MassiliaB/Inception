FROM debian:buster

# RUN groupadd -r mysql && useradd -r -g mysql mysql

RUN apt-get update && apt-get install -y \
	apt-utils \
	mariadb-server \
	mariadb-client

#COPY tools/setup.sql /docker-entrypoint-initdb.d/
COPY tools/init.sh .
# COPY tools/admin_user.sh	/usr/local/bin/admin_user.sh
# RUN chmod +x /usr/local/bin/*
EXPOSE 3306

ENTRYPOINT ["bash", "init.sh"]
CMD ["mysqld"]

# CMD ["mysqld"]

    # location / {
    #     proxy_redirect off;
    #     proxy_pass http://wordpress;
    #     proxy_set_header  Host $host;
    #     proxy_set_header  X-Real-IP $remote_addr;
    #     proxy_set_header  X-Forwarded-For $proxy_add_x_forwarded_for;
    #     proxy_set_header  X-Forwarded-Proto $scheme;
    #     try_files $uri $uri/ /index.php?$args;
    #   }
