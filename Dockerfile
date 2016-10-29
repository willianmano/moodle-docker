FROM php:7.0-apache

RUN apt-get update && \
    apt-get install vim git -y

RUN apt-get install libicu-dev g++ zlib1g-dev libpng-dev libxml2-dev -y

RUN docker-php-ext-install mysqli pdo pdo_mysql mbstring intl zip gd xmlrpc soap

RUN a2enmod rewrite

ADD docker-apache-config.conf /etc/apache2/sites-enabled/000-default.conf