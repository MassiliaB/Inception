FROM debian

RUN apt-get update && apt-get install -y \
   apt-utils \
   mariadb-server

EXPOSE 3306

CMD ["mariadbd"]