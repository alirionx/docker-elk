#!/bin/bash

TIMEZN="Europe/Berlin"
COMPOSSRC="https://github.com/docker/compose/releases/download/1.28.0"


echo "$TIMEZN" > /etc/timezone

apt update && apt upgrade -y
apt install -y docker.io
usermod -aG docker $USER

curl -L "$COMPOSSRC/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

