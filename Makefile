setup:
	sudo chmod +x setupfile && ./setupfile

init:
	docker compose up airflow-init
