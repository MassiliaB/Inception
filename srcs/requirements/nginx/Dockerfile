FROM debian

RUN apt-get update && apt-get install -y \
	apt-utils \
	nginx

COPY nginx/tools/index.html /usr/share/nginx/html/

EXPOSE 8080 443

CMD ["nginx", "-g", "daemon off;"]