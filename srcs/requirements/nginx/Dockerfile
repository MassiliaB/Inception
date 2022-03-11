FROM debian:buster

RUN apt-get update && apt-get install -y \
	nginx

COPY certs/ /etc/nginx/certs

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log 

EXPOSE 8080 443
CMD ["nginx", "-g", "daemon off;"]