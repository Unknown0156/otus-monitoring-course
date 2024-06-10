FROM python:3.10-slim

RUN apt update && apt install -y libpq5

WORKDIR /mymusic

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --trusted-host nexus.isb --index https://nexus.isb/repository/pypiorg-pypi-proxy/pypi --index-url https://nexus.isb/repository/pypiorg-pypi-proxy/simple --upgrade pip
COPY ./requirements.txt .
RUN pip install --trusted-host nexus.isb --index https://nexus.isb/repository/pypiorg-pypi-proxy/pypi --index-url https://nexus.isb/repository/pypiorg-pypi-proxy/simple -r requirements.txt

COPY . .