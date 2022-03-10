FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx

# COPY tools/index.html /var/www/html/
# COPY conf/default /etc/nginx/sites-available/default
COPY certs/ /etc/nginx/certs

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log 

 RUN chown -R www-data:www-data /var/www/html/*
#  	&& chmod -R 777 /var/www/html/

COPY test.php /usr/share/nginx/www

EXPOSE 8080 443
CMD ["nginx", "-g", "daemon off;"]

    #   <!-- try_files $uri $uri/ /i ndex.php$is_arg$args; -->
    #   root /var/www/html/wordpress;
#

    # location / {
    #   
    #   try_files $uri $uri/ /index.php?$query_string;
    # }
