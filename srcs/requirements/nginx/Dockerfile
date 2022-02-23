FROM nginx:latest

RUN apt-get update && apt-get install -y \
	wget \
	apt-utils \
	nginx

COPY nginx/tools/index.html /usr/share/nginx/html/

# configure ssl certificat
#RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.1.2/mkcert-v1.1.2-linux-amd64 \
 #	&& mv mkcert-v1.1.2-linux-amd64 mkcert \
#	&& chmod +x mkcert \
#	&& cp mkcert /usr/local/bin/ \
#	&& mkcert -install && mkcert localhost

EXPOSE 8080 443
