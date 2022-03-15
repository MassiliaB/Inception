FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx

COPY certs/ /etc/nginx/certs
COPY conf/site.conf /etc/nginx/conf.d/default.conf

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log 

EXPOSE 8080 443

RUN chown -R www-data /var/www/* \
    && chmod -R 755 /var/www/* 

CMD ["nginx", "-g", "daemon off;"]