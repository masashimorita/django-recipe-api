FROM python:3.10.2-slim

RUN apt-get update -qq

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
#ENV PIPENV_VENV_IN_PROJECT 1

WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

ADD . /app

RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/web/static

EXPOSE 80
CMD [ "python", "manage.py", "runserver", "0.0.0.0:7000" ]
