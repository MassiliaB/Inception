FROM debian:buster

RUN apt-get -y update && apt -y upgrade && apt-get -y install \
    curl php7.3-fpm php7.3-common php7.3-mysql php7.3-gmp php7.3-curl \
    php7.3-intl php7.3-mbstring php7.3-xmlrpc php7.3-gd php7.3-xml \
    php7.3-cli php7.3-zip php7.3-soap php7.3-imap \
    php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip \
    vim \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /var/run/php 

COPY  tools/www.conf /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE  9000

RUN set -ex; \
	mkdir -p /var/www/html; \
	chown -R www-data:www-data /var/www/html

WORKDIR /var/www/html

CMD   php-fpm7.3 -F