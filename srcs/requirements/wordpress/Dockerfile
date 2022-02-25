FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    wget \
    tar \
    zip \
    unzip 

COPY tools/wp-config.php . 

#Install and configure Wordpress
RUN  wget https://fr.wordpress.org/wordpress-latest-fr_FR.zip ; \
    unzip wordpress-latest-fr_FR.zip -d /var/www/html; \
    rm -rf wordpress-latest-fr_FR.zip; \
	chown -R www-data:www-data /var/www/html/wordpress; \
    mv wp-config.php /var/www/html/wordpress/ 

CMD ["php-fpm"]