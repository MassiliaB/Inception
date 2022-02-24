FROM debian:bullseye

RUN apt-get update && apt-get install -y \
	--no-install-recommends apt-utils \
	nginx

COPY tools/index.html /usr/share/nginx/html/

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 8080 443

CMD ["nginx", "-g", "daemon off;"]