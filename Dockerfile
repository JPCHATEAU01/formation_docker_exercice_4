FROM php:7-apache

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html