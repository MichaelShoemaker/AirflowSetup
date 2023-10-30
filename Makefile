setup:
	sudo chmod +x setupfile && ./setupfile

init:
	docker compose up airflow-init

up:
	docker compose up -d

down:
	docker compose down

clean-docker:
	@echo "Stopping and removing all Docker containers..."
	@docker stop $$(docker ps -a -q) || true
	@docker rm $$(docker ps -a -q) || true

	@echo "Removing all Docker images..."
	@docker rmi $$(docker images -q) || true

	@echo "Removing all unused Docker volumes..."
	@docker volume prune -f