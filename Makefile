FILE = srcs/requirements/docker-compose.yml
ENV = srcs/requirements/.env
PORT = 80
SSL_PORT = 443


build:
	@sudo docker-compose -f $(FILE) build

build_no:
	@sudo docker-compose -f $(FILE) build --no-cache

d:
	@sudo docker-compose -f $(FILE) up -d --build

down:
	@sudo docker-compose -f $(FILE) down -v 

up:
	@sudo docker-compose -f $(FILE) up

run_n:
	@sudo docker-compose -f $(FILE) run --name nginx -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) nginx
run_w:
	@sudo docker-compose -f $(FILE) run --name wordpress -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) wordpress
run_m:
	@sudo docker-compose -f $(FILE) run --name mariadb -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) mariadb

run_n-d:
	@sudo docker-compose -f $(FILE) run --name nginx -d -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) nginx
run_w-d:
	@sudo docker-compose -f $(FILE) run --name wordpress -d -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) wordpress
run_m-d:
	@sudo docker-compose -f $(FILE) run --name mariadb -d -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) mariadb

exec_n:
	@sudo docker exec -it nginx bash
exec_w:
	@sudo docker exec -it wordpress bash
exec_m:
	@sudo docker exec -it mariadb bash

rm_n:
	@sudo docker rm nginx
rm_w:
	@sudo docker rm wordpress
rm_m:
	@sudo docker rm mariadb

stop_n:
	@sudo docker-compose -f $(FILE) stop nginx
stop_w:
	@sudo docker-compose -f $(FILE) stop wordpress
stop_m:
	@sudo docker-compose -f $(FILE) stop mariadb

# inspect:

clear:
	@sudo make down
	@sudo docker system prune

.PHONY: build run run-it stop
