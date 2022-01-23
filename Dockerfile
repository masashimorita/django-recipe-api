FROM python:3.7-slim

RUN apt-get update -qq

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PIPENV_VENV_IN_PROJECT 1

WORKDIR /app
RUN pip install pipenv

ADD . .
EXPOSE 80
CMD [ "python", "manage.py", "runserver", "0.0.0.0:7000" ]
