FROM debian:buster

RUN apt-get -y update && apt -y upgrade && apt-get -y install \
    curl php-curl php-mbstring  php-xml php-zip php-mysqli \
    php7.3-fpm php7.3-mysqli php7.3-common php7.3-mysql php7.3-curl php7.3-mbstring php7.3-cli \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /var/run/php 

COPY  tools/www.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar ;\
    chmod +x wp-cli.phar; \
    mv wp-cli.phar /usr/local/bin/wp

RUN set -ex; \
	mkdir -p /var/www/html; \
	chown -R www-data:www-data /var/www/html

COPY  tools/install-wp.sh /usr/local/bin/install-wp

WORKDIR /var/www/html

RUN chmod +x /usr/local/bin/install-wp

EXPOSE  9000

CMD ["bash", "-c", "set -e && install-wp"]