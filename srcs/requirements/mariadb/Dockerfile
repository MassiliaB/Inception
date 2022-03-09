FROM debian:buster

RUN groupadd -r mysql && useradd -u 999 -r -g mysql mysql

ENV DEBIAN_FRONTEND "noninteractive"
ARG DB_PSSWD
ENV MYSQL_PASSWORD "$DB_PSSWD"
RUN echo "mariadb-server mysql-server/root_password password $MYSQL_PASSWORD" | debconf-set-selections \
    && echo "mariadb-server mysql-server/root_password_again password $MYSQL_PASSWORD" | debconf-set-selections \
    && apt-get update && apt-get install -y \
    mariadb-server \
	apt-utils

RUN service mysql start && mysql -u root -p$MYSQL_PASSWORD -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD'; FLUSH PRIVILEGES;"
#MYSQL_ROOT_PASSWOR
#COPY tools/setup.sql /docker-entrypoint-initdb.d/
COPY tools/init.sh .
COPY tools/mysqld.conf  /etc/mysql/mysql.conf.d/mysqld.conf
# COPY tools/admin_user.sh	/usr/local/bin/admin_user.sh
# RUN chmod +x /usr/local/bin/*
EXPOSE 3306

RUN bash init.sh
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

# Bonjour,
# Je souhaite contester cette amende. Est-il possible de l'annuler ou bien d'obtenir une réduction s'il vous plaît ? J'ai envoyé un sms pour acheter un ticket mais il n'a pas été prit en compte car je n'avais pas eu de confirmation du 93100 alors que je ne savais pas..
# Merci de votre compréhension,
# Bien à vous