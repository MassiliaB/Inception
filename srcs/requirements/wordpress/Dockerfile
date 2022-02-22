FROM wordpress:latest

RUN apt-get update && apt-get install -y \
   mariadb-client

COPY php.ini /usr/local/etc/php

RUN chown -R www-data:www-data /var/www/html/wordpress \
	&& mv wp-config.php /var/www/html/wordpress/