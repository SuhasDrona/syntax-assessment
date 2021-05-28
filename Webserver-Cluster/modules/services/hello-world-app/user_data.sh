#!/bin/bash
sudo hostnamectl set-hostname syn-app01
sudo apt update -y
sudo apt install software-properties-common apt-transport-https ca-certificates curl -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update -y
sudo apt install python3.8 -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update -y
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}
newgrp docker
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
mkdir -p /tmp/syntax
cat > /tmp/syntax/docker-compose.yml <<-EOF
version: '3.7'

services:
  web:
    image: django:latest
    command: gunicorn hello_django.wsgi:application --bind 0.0.0.0:8000
    volumes:
      - static_volume:/home/app/web/staticfiles
      - media_volume:/home/app/web/mediafiles
    ports:
    - "8000:8000"
    environment:
      SQL_ENGINE: django.db.backends.postgresql
      SQL_DATABASE: ${DB_HOST}
      SQL_USER: ${DB_USER}
      SQL_PASSWORD: ${DB_PASSWORD}
      SQL_HOST: ${DB_NAME}
      SQL_PORT: ${DB_PORT}

volumes:
  static_volume:
  media_volume:
EOF
cd /tmp/syntax
docker-compose up -d
