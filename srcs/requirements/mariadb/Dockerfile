FROM mysql:latest

RUN apt-get update && apt-get install -y \
   apt-utils \
   mariadb-server

#RUN mkdir /var/www/html/phpmyadmin 

#RUN chown -R mysql:mysql /var/www/html
#&& chown -R www-data:www-data /var/www/html/phpmyadmin

EXPOSE 3306

#CMD bash mariadb/tools/run.sh
