# django-recipe-api
Manage Recipe of yours!

# Requirements

- Docker 20.10.6
- Docker Compose 2.0.0-beta.1
- pip 21.2.4
- Python 3.10.2

※ This project uses `requirements.txt` as package management

# Project Setup

1. Building a docker image
    ```bash
    $ docker-compose build
    ```

3. Migrate Database
    ```bash
    $ docker-compose run --rm app python manage.py migrate
    ```

4. start docker container
    ```bash
    $ docker-compose up 
    ```
