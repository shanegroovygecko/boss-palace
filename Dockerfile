FROM php:7.4-apache

COPY docker-files/rewrite.load /etc/apache2/mods-enabled/rewrite.load

RUN docker-php-ext-install mysqli pdo_mysql
RUN apt-get update \
    && apt-get install -y sudo \
    && apt-get install -y curl \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip \
    && docker-php-ext-install exif


ENTRYPOINT ["./docker/provision-app-start.sh"]
