# django-recipe-api
Manage Recipe of yours!

# Requirements

- Python 3.11.4
- Django 4.2.3
- djangorestframework 3.14.0
- flake8 6.0.0

※ This project uses `requirements.txt` as package management

# Project Setup

1. Building a docker image
    ```bash
    $ make build
    ```

3. Migrate Database
    ```bash
    $ make migrate
    ```

4. start docker container
    ```bash
    $ make up
    ```

5. stop docker container
    ```bash
    $ make down
    ```