.PHONY: build install sh run down

build:
	docker compose build

create:
	docker compose run --rm app sh -c "django-admin startproject app ."

sh:
	docker compose run --rm app sh

up:
	docker compose up

down:
	docker compose down

migrate:
	docker compose run --rm app sh -c "python manage.py migrate"

lint:
	docker compose run --rm app sh -c "flake8"

test:
	docker compose run --rm app sh -c "python manage.py test"
