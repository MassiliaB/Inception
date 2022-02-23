APP_NAME = inception

FILE = srcs/requirements/docker-compose.yml

ENV = srcs/requirements/.env

PORT = 80

SSL_PORT = 443


all:
	docker-compose -f $(FILE) --env-file $(ENV) up --build

build_d:
	docker-compose -f $(FILE) --env-file $(ENV) up --build

build:
	docker-compose -f $(FILE) build .

up:
	docker-compose -f $(FILE) up

run:
	docker-compose -f $(FILE) run --name $(APP_NAME) -d -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) $(APP_NAME)

run-it:
	docker-compose -f $(FILE) run --name $(APP_NAME) -it -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) $(APP_NAME)

exec:
	docker exec -it requirements-nginx-1 bash

stop:
	docker-compose -f $(FILE) stop $(APP_NAME); docker rm $(APP_NAME)

clear all:
	docker system prune

.PHONY: build run run-it stop
