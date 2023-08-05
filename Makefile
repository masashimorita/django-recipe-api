.PHONY: build install sh run down

build:
	docker compose build

create-project:
	docker compose run --rm app sh -c "django-admin startproject app ."

create-app:
	docker compose run --rm app sh -c "python manage.py startapp $(name)"

sh:
	docker compose run --rm app sh

up:
	docker compose up

down:
	docker compose down

migration:
	docker compose run --rm app sh -c "python manage.py makemigrations"

migrate:
	docker compose run --rm app sh -c "python manage.py migrate"

lint:
	docker compose run --rm app sh -c "flake8"

test:
	docker compose run --rm app sh -c "python manage.py test"

create-superuser:
	docker compose run --rm app sh -c "python manage.py createsuperuser"
