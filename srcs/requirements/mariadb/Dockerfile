FROM mysql:latest

RUN apt-get update && apt-get install -y \
   mariadb-server \
   wget \
   php php-fpm php-mysql \
   php-mbstring php-zip php-gd php-xml php-pear php-gettext php-cgi

RUN mkdir /var/www/html/phpmyadmin 

RUN chown -R mysql:mysql /var/www/html
	&& chown -R www-data:www-data /var/www/html/phpmyadmin

RUN run.sh
