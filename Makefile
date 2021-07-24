restart:
	docker compose down; \
	docker compose build; \
	docker compose up -d; \
	docker exec -it rails bash

build:
	docker compose build --no-cache

up:
	docker compose up -d

down:
	docker compose down

exec:
	docker exec -it rails bash
