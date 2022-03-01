FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    wget \
    tar \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["php-fpm"]

  #   proxy_set_header  Host $host;
  #   proxy_set_header  X-Real-IP $remote_addr;
  # #  proxy_pass        http://nginx;
  #   
  #   proxy_redirect    off;
  #   proxy_set_header  X-Forwarded-For $proxy_add_x_forwarded_for;
  #   proxy_set_header X-NginX-Proxy true;
  #   proxy_ssl_session_reuse off;
#				
        # try_files $uri $uri/ /index.php$is_args$args;
		# <!-- location / {
		# 	root /var/www/html;
		# 	index index.html;
		# 	try_files $uri $uri/ =404 ;
		# } -->
