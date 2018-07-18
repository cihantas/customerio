FROM php:7.2-cli

RUN mkdir -p /var/www/site

RUN pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug

WORKDIR /var/www/site