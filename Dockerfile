# syntax=docker/dockerfile:1

FROM python:latest

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /code

RUN pip3 install django

COPY . /code/

CMD ["python3", "django_playground/manage.py", "runserver", "0.0.0.0:8000"]
