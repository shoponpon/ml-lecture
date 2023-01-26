.PHONY: build up down python bash

build:
	docker-compose build
	docker-compose up -d
	docker-compose exec ml pip install -r ./requirements.txt

up:
	docker-compose up -d

down:
	docker-compose down

python: up
	docker-compose exec ml python

bash: up
	docker-compose exec ml bash
