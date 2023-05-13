FROM python:3.9-alpine3.16

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONNUNBUFFERED 1

COPY requirements.txt /temp/requirements.txt
COPY service /service

WORKDIR /service

EXPOSE 8000

RUN pip install -r /temp/requirements.txt

