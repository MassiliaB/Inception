APP_NAME = inception

FILE = srcs/docker-compose.yml

PORT = 80

SSL_PORT = 443

build:
	docker-compose -f $(FILE) build .

up:
	docker-compose -f $(FILE) up

run:
	docker-compose -f $(FILE) run --name $(APP_NAME) -d -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) $(APP_NAME)

run-it:
	docker-compose -f $(FILE) run --name $(APP_NAME) -it -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) $(APP_NAME)

stop:
	docker-compose -f $(FILE) stop $(APP_NAME); docker rm $(APP_NAME)

.PHONY: build run run-it stop
