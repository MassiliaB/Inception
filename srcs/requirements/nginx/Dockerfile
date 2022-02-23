FROM nginx:latest

RUN apt-get update && apt-get install -y \
   nginx \
   && echo "daemon off;" >> /etc/nginx/nginx.conf 

EXPOSE 8080 4443
