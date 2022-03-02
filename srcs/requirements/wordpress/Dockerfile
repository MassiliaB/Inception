FROM debian:buster

RUN userdel www-data && useradd -u 82 www-data

RUN apt-get update && apt-get install -y \
  php php-fpm php-mysql mariadb-client php7.3 \
  php-mbstring php-zip php-gd php-xml php-pear php-gettext php-cgi

COPY tools/php.ini /usr/local/etc/php/conf.d/uploads.ini

CMD ["/etc/init.d/php7.3-fpm"]

  # #  proxy_pass        http://nginx;
  #   
  #   proxy_redirect    off;
  #   proxy_set_header X-NginX-Proxy true;
  #   proxy_ssl_session_reuse off;
#				
        # try_files $uri $uri/ /index.php$is_args$args;
		# <!-- location / {
		# 	root /var/www/html;
		# 	index index.html;
		# 	try_files $uri $uri/ =404 ;
		# } -->
        #;
