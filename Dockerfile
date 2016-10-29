FROM php:7.0-apache

RUN apt-get update && \
    apt-get install vim git -y

RUN apt-get install libicu-dev g++ zlib1g-dev libpng-dev libxml2-dev graphviz -y

RUN docker-php-ext-install mysqli pdo pdo_mysql mbstring intl zip gd xmlrpc soap

COPY php.ini /usr/local/etc/php/

RUN mkdir 0777 /var/www/moodledata
RUN chown www-data.www-data /var/www/moodledata


#INSTALL NODE
RUN apt-get install build-essential nodejs npm -y