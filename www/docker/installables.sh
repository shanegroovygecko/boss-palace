#!/bin/bash

apt-get update
apt-get install -y sudo
apt install -y git
apt install -y curl
apt install -y vim
apt-get install -y libzip-dev
apt-get install -y zlib1g-dev
rm -rf /var/lib/apt/lists/*
docker-php-ext-install zip
docker-php-ext-install mysqli pdo_mysql
docker-php-ext-install exif