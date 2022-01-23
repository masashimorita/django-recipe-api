# django-recipe
Manage Recipe of yours!

# Project Setup

1. Building a docker image
    ```bash
    $ docker-compose build
    ```

2. Install Django library
    ```bash
    $ docker-compose run --rm app pipenv install
    ```

3. Migrate Database
    ```bash
    $ docker-compose run --rm app pipenv run python manage.py migrate
    ```

4. start docker container
    ```bash
    $ docker-compose up 
    ```
