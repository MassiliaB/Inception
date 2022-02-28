FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx

COPY tools/index.html /var/www/html/
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY default /etc/nginx/sites-available/default

RUN rm -rf /var/lib/apt/lists/*; \
	ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log;

RUN chown -R www-data /var/www/*; \
	chmod -R 755 /var/www/*

EXPOSE 8080 443

CMD ["nginx", "-g", "daemon off;"]