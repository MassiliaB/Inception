FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx

# COPY tools/index.html /var/www/html/
COPY conf/default /etc/nginx/sites-available/default
COPY certs/ /etc/nginx/certs

RUN rm -rf /var/lib/apt/lists/*; \
	ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log \
	&& mkdir /var/www/html/wordpress

RUN chown -R www-data /var/www/html/wordpress \
	&& chmod -R 777 /var/www/html/wordpress

EXPOSE 8080 443

CMD ["nginx", "-g", "daemon off;"]