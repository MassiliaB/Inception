
FILE = srcs/requirements/docker-compose.yml

ENV = srcs/requirements/.env

PORT = 8080

SSL_PORT = 4443

build:
	docker-compose -f $(FILE) up --build

# d:
# 	docker-compose -f $(FILE) up -d --build

# up:
# 	docker-compose -f $(FILE) up

# run_n:
# 	docker-compose -f $(FILE) run --name nginx -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) nginx
# run_w:
# 	docker-compose -f $(FILE) run --name wordpress -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) wordpress
# run_m:
# 	docker-compose -f $(FILE) run --name mariadb -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) mariadb

# run_n-d:
# 	docker-compose -f $(FILE) run --name nginx -d -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) nginx
# run_w-d:
# 	docker-compose -f $(FILE) run --name wordpress -d -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) wordpress
# run_m-d:
# 	docker-compose -f $(FILE) run --name mariadb -d -p $(SSL_PORT):$(SSL_PORT) -p $(PORT):$(PORT) mariadb

# exec_n:
# 	docker exec -it nginx bash
# exec_w:
# 	docker exec -it wordpress bash
# exec_m:
# 	docker exec -it mariadb bash

# rm_n:
# 	docker rm nginx
# rm_w:
# 	docker rm wordpress
# rm_m:
# 	docker rm mariadb

# stop_n:
# 	docker-compose -f $(FILE) stop nginx
# stop_w:
# 	docker-compose -f $(FILE) stop wordpress
# stop_m:
# 	docker-compose -f $(FILE) stop mariadb

# clear:
# 	docker system prune

# .PHONY: build run run-it stop
