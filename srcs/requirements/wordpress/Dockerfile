FROM debian:buster

RUN apt-get update && apt-get install -y \
  php php-fpm php7.3 php-cgi php-cli php-common \
  php-mbstring php-net-socket \
  php-xml-util php-mysql php-mysqli mariadb-client

# RUN userdel www-data && useradd -u 82 www-data

COPY tools/www.conf /etc/php/7.3/fpm/pool.d/
#COPY tools/php.ini  /etc/php/7.3/fpm/php.ini
RUN service php7.3-fpm start

# RUN chown -R www-data:www-data /var/www/html \
#     && chmod -R 777 /var/www/html

EXPOSE 9000
WORKDIR /var/www/html

CMD /usr/sbin/php-fpm7.3 -F

#CMD ["/etc/init.d/php7.3-fpm", "start"]
#      try_files $uri $uri/ /index.php$is_args$args;

# RUN wget https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_amd64.deb
# RUN dpkg -i dumb-init_*.deb
# ENTRYPOINT ["/usr/bin/dumb-binit", "--"]
# CMD ["/etc/init.d/php7.3-fpm", "start"]
# #  proxy_pass        http://nginx;
#   
#   proxy_redirect    off;
#   proxy_set_header X-NginX-Proxy true;
#   prozzbxy_ssl_session_reuse off;
#				
        # try_files $uri $uri/ /index.php$is_args$args;
		# <!-- location / {
		# 	root /var/www/html;
		# 	index index.html;
		# 	try_files $uri $uri/ =404 ;
		# } -->
        #;
# Copy our config files for php7.3 fpm and php7.3 cli
    #   location = /favicon.ico {
    #       log_not_found off;
    #       access_log off;
    #   }
    #   location = /robots.txt {
    #       allow all;
    #       log_not_found off;
    #       access_log off;
    #   }
    # location ~/\. {
    #     deny all;
    # }
    # try_files $uri $uri/ /index.php$is_args$args;
# server {
# 		listen 80;
#     listen [::]:80;
# 		server_name localhost;
# 	  return 301 https://$host$request_uri;
# }

# server
# {
#     listen 443 ssl http2;
#     listen [::]:443 ssl http2;
#     server_name localhost;
  
# 		ssl	on;
#     ssl_certificate     /etc/nginx/certs/rootca.crt;
#     ssl_certificate_key /etc/nginx/certs/rootca.key;
#     ssl_protocols       TLSv1.2 TLSv1.3;
    
#     location / {
#       root /var/www/html;
#       index index.php index.html;
#     }
#     error_page         500 502 503 504 /50x.html;
#         location = /50x.html {
#         root           /var/www/html;
#         }
#     location ~ \.php$ {
#       root /var/www/html;
# 			include        fastcgi_params;
#       fastcgi_pass   wordpress:9000;
#       fastcgi_index  index.php;
#       fastcgi_param  SCRIPT_FILENAME  /script$fastcgi_script_name;
# 			}
# }
