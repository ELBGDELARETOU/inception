all: up

up: build
		@sudo mkdir -p /home/anaouali42/data/wordpress
		@sudo mkdir -p /home/anaouali42/data/mariadb
		docker compose -f ./docker-compose.yml up -d
down:
		docker compose -f ./docker-compose.yml down
stop:
		docker compose -f ./docker-compose.yml stop
start:
		docker compose -f ./docker-compose.yml start
build:
		docker compose -f ./docker-compose.yml build
clean:
		@sudo docker stop $$(docker ps -qa) || true
		@sudo docker rm $$(docker ps -qa) || true
		@sudo docker rmi -f $$(docker images -qa) || true
		@sudo docker volume rm $$(docker volume ls -q) || true
		@sudo docker network rm $$(docker volume ls -q) || true
		@sudo rm -rf /home/anaouali42/data/wordpress || true
		@sudo rm -rf /home/anaouali42/data/mariadb || true
re: clean up

prune: clean
		@docker system prune -a --volumes -f

